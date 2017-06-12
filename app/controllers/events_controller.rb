class EventsController < ApplicationController

  before_action :is_admin_logged?

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @new_event = Event.new
  end

  def create
    @new_event = Event.new(event_params)
    if @new_event.save
      redirect_to events_path
    else
      render 'new'
    end

  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to events_path
    else
      #TODO non deleted
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(event_params)
      redirect_to events_path
    else
      render 'edit'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end

  def is_admin_logged?
    redirect_to home_path unless logged_in?
  end

end
