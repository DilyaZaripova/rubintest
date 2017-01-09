class SessionsController < ApplicationController
  #skip_before_action :ensure_login, only: [:new, :create]
  def new
  end
  # "Создаем" логин (при входе пользователя)
  def create
    unless params[:session].blank?
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        # Сохраняем ID пользователя в сессии, так что он может быть использован
        # в последующих запросах
        # Sign the user in and redirect to the user's show page.
        sign_in user
        redirect_to works_index_path  # goto work place
      else
        # Create an error message and re-render the signin form.
        # доступ к значениям в этом же запросе
        redirect_to signin_path, alert: 'Login failed. Invalid email/password combination. Repeat'
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
