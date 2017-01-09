class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #add Sessions module
  include SessionsHelper
  # фильтр - прерывание цикла запроса
  before_action :ensure_login

  protected
  def ensure_login
    redirect_to signin_path unless cookies[:remember_token]
  end
end