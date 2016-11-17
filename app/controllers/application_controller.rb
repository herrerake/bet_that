class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_new_user
  before_action :set_current_user # Here we're saying "run the method set_current_user before every controller action"

  def create_new_user
    @user = User.new
  end

  def set_current_user
    if User.exists?(session[:user_id]) #if there is a user_id currently stored in the session hash...
      @current_user = User.find(session[:user_id]) #... find and save that in @current_user
    else
      @current_user = nil # ...overwise, set @current_user to nil
    end
  end
end
