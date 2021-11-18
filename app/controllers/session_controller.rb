class SessionController < ApplicationController
  # pongamos 0 si inicializar
  # 1 login correcto
  # -1 login erróneo
  @ultimo_login = 0
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  def new
  end

  def create
    self.current_user = User.authenticate(params["/session"]["login"], params["/session"]["password"])
    if logged_in?
      if params[:remember_me] == "1"
        current_user.remember_me unless current_user.remember_token?
        cookies[:auth_token] = { :value => self.current_user.remember_token , :expires => self.current_user.remember_token_expires_at }
        @ultimo_login = 1
      end
      redirect_back_or_default('/')
      flash[:notice] = "* * * Acceso exitoso * * *"
    else
      	@ultimo_login = -1
	render :action => 'new'
    end
  end

  def destroy
    self.current_user.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    @ultimo_login = 0
    flash[:notice] = "Has salido del sistema."
    redirect_back_or_default('/')

  end

end
