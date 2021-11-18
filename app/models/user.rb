require 'digest/sha1'
class User < ApplicationRecord
  has_many :solicituds
  has_many :requisicions
  has_many :articulos
  has_many :atencions
  has_many :evolucions
  has_many :almacens
  has_many :reordens
  has_many :peds
  belongs_to :rol
  belongs_to :area

  # Virtual attribute for the unencrypted password
  attr_accessor :password

  validates_presence_of     :login, :email
  validates_presence_of     :password,                   :if => :password_required?
  validates_presence_of     :password_confirmation,      :if => :password_required?
  validates_length_of       :password, :within => 4..40, :if => :password_required?
  validates_confirmation_of :password,                   :if => :password_required?
  validates_length_of       :login,    :within => 3..40
  validates_length_of       :email,    :within => 3..100
  validates_uniqueness_of   :login, :email, :case_sensitive => false
  before_save :encrypt_password

  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  #attr_accessible :login, :email, :password, :password_confirmation, :titulo, :nombre, :area_id, :rol_id, :estructura_id, :dato1, :dato2
  # Gasca: attr_accessible ya no es compatible con rails 6, vamos en su lugar a hacer un controlador user controller
  # Para traernos el nombre completo
  def name
    titulo + " " + nombre
  end

  # Para traernos el nombre completo y el puesto
  def nompos
    titulo + " " + nombre + "<br/>"+puesto
  end

  # Authenticates a user by their login name and unencrypted password.
  # Returns the user or nil.
  def self.authenticate(login, password)
    u = find_by_login(login.to_s.upcase) # need to get the salt

    u && u.authenticated?(password) ? u : nil
  end

  # Encrypts some data with the salt.
  def self.encrypt(password, salt)
    Digest::SHA1.hexdigest("--#{salt}--#{password}--")
  end

  # Encrypts the password with the user salt
  def encrypt(password)
    self.class.encrypt(password, salt)
  end

  def authenticated?(password)
    crypted_password == encrypt(password)
  end

  def remember_token?
    remember_token_expires_at && Time.now.utc < remember_token_expires_at
  end

  # These create and unset the fields required for remembering 
  # users between browser closes
  def remember_me
    remember_me_for 2.weeks
  end

  def remember_me_for(time)
    remember_me_until time.from_now.utc
  end

  def remember_me_until(time)
    self.remember_token_expires_at = time
    self.remember_token = encrypt("#{email}--#{remember_token_expires_at}")
    save(false)
  end

  def forget_me
    self.remember_token_expires_at = nil
    self.remember_token            = nil
    # que se supone que hace? save()
  end

  # Returns true if the user has just been activated.
  def recently_activated?
    @activated
  end

  protected
    # before filter
    def encrypt_password
      return if password.blank?
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{login}--") if new_record?
      self.crypted_password = encrypt(password)
    end

    def password_required?
      crypted_password.blank? || !password.blank?
    end
end
