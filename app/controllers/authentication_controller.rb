class AuthenticationController < ApplicationController

  before_action :authenticate

  # Este metodo nos permite autenticar el toquen
  def authenticate
    authenticate_token || render_unauthorized
  end

#Este metodo nos permite autenticar el toquen y verificar si todavia esta valido
  def authenticate_token
    authenticate_with_http_token do |token, options|
      session = Session.find_by_auth_token(token)
      if session
        time = Time.new.to_i - session.created_at.to_i
        if time > 1800
          session.destroy
          return false
        end
      end
      return true
    end
  end

  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render json: 'El toquen ingresado es incorrecto', status: :unauthorized
  end


end
