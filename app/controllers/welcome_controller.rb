class WelcomeController < ApplicationController
  #layout "general"
  def index
    ##  @usuarios = User.find(:all, :order => "nombre")
    @usuarios = User.all.order(:nombre)
  end
end
