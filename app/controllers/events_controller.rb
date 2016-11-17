class EventsController < ApplicationController
  def index
    @events = @current_user.events
    @user = User.new
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = @current_user.events.create!(event_params)
    @event.save
    redirect_to events_path
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :reason, :award)
  end

end
