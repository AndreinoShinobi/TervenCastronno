class EventsController < ApplicationController

  def show
    @events = Event.all.order(:date)
  end

end
