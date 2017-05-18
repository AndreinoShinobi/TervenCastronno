class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @new_event = Event.new(event_params)
    if @new_event.save

    else
      render 'new'
    end

  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      #TODO view destroyed
    else
      #TODO notice: have not destroyed the event
    end

  end

  def update

  end

  def new
    render json: 'new'
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end
end
