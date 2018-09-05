class ApplicationController < ActionController::Base
  def autenticacao
    user = session[:autenticacao]
    if(user.nil?)
      redirect_to login_usuarios_path
    elsif (!Usuario.find(user['id']).nil?)
      return Usuario.find(user['id'])
    end
  end
end
