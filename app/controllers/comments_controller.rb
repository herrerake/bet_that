class CommentsController < ApplicationController

  # think you don't need index and show
  def index
  end

  def show

  end

  def new
    @event = Event.find(params[:event_id])
    @comment = @event.comments.new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create!(comment_params.merge(user: @current_user))
    redirect_to event_path(@event)
  end

  def edit
    # add this here
    # @event = Event.find(params[:event_id])
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
