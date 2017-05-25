class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    render json: 'new'
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
      #TODO view after destroying
    else
      #TODO non deleted
    end
  end

  def edit
    render json: 'edit'
  end

  def update
    @event = Event.find(params[:id])

    @event.update_attributes(event_params)
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end
end
