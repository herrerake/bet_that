class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_new_user
  before_action :set_current_user # Here we're saying "run the method set_current_user before every controller action"

  # not sure you need this here-- I'd just rely on a route going to user#new linked from the application layout
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

# I love the concept behind this app-- it's creative and solves an interesting problem in a clever way. really cool project; very clever take on a 2+ model CRUD app. 

# I've included some suggestions for polishing this app through out your project
