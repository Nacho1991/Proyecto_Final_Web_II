class SessionsController < ApplicationController
  def new
    @Usuario = Usuarios.new
  end

  def iniciar
    if @Usuario = login(params[:username],params[:password])
      redirect_back_or_to(post_path,message:"Login existoso")
    else
      flash[:alert] = "Algo salio mal con el login"
      render action: :new
    end
  end

  def salir
    logout
    redirect_to(:usuarios,message:"Sesion cerrada")
  end
end
