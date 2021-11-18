class UsersController < ApplicationController
  before_action :login_required
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  # render new.rhtml
  def new
    if current_user.rol_id != 10
      redirect_to("/")
    end
  end

  def edit
    if current_user.rol_id != 10
      redirect_to("/")
    end
    @user = User.find(params[:id])
  end

  def create
    User.create(user_params)
  end 

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'El usuario fue actualizado correctamente.'
        format.html { redirect_to("/") }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @user = User.new(params[:user])
    @user.save
    if @user.errors.empty?
      self.current_user = @user
      redirect_back_or_default('/')
      flash[:notice] = "Gracias por inscribirse al SISOLC"
    else
      render :action => 'new'
    end
  end
  def show
    @medico = User.find(params[:id])
    if [5,7,8,10,17,18,19].include?(current_user.rol_id)
      @usuario = [17].include?(current_user.rol_id) ? current_user.id : params[:id]
      @pacientes = Paciente.find_by_sql ["select * from pacientes where id = ? or exists(select * from atencions where user_id = ?) order by nombre",@usuario,@usuario]
      @domicilios = Domicilio.where("user_id=?",@usuario).order(id: :DESC)   
      @afiliacions = Afiliacion.where("user_id=?",@usuario).order(id: :DESC)
      @atencions = Atencion.where("user_id=?",@usuario).order(id: :DESC)
      @evolucions = Evolucion.where("user_id=?",@usuario).order(id: :DESC)
      @nacidos = Nacido.where("user_id=?",@usuario).order(id: :DESC)
      respond_to do |format|
        format.html # show.html.erb
      end
    else
      redirect_to("/")
    end
  end

    
  private

    def user_params
      params.require(:user).permit(:login, :email, :password, :password_confirmation, 
        :titulo, :nombre, :area_id, :rol_id, :estructura_id, :dato1, :dato2)
    end

end
