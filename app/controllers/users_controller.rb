class UsersController < ApplicationController

  skip_before_filter :verify_authenticity_token

 #Este metodo nos permite autenticarnos y crear una sesión que expire en 30 minutos
  def authenticate
    user = User.find_by_user(params[:user])
    if user
      if user.authenticate(params[:password])
      session = Session.new(:user => params[:user])
      if session.save
        render status: :ok, json: {authToken: session.auth_token}
      else
        render status: :unprocessable_entity, json: {Errors: session.errors}
      end
    else
      render status: :unprocessable_entity, json: {Error: "Nombre de usuario o contraseña incorrecta"}
      end
    else
      render status: :unprocessable_entity, json: {Error: "Nombre de usuario o contraseña incorrecta"}
    end
  end

  # Delete a session
  def logout
    session = Session.find_by_auth_token(params[:auth_token])
    if session.destroy
     render  status: :ok,json:{}
    else
      render status: :unprocessable_entity, json: {Errors:"Error inesperado al intentar cerrar la sesión"}
    end
  end
end
