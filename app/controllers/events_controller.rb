class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    #TODO partial form [like edit]
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
    #TODO partial form [like new]
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
