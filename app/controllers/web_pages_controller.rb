class WebPagesController < ApplicationController

  def home
    required_events = 4
    @last_events = Event.all.limit(required_events).order(date: :desc)
  end

  def our_events
    @all_events = Event.all.order(date: :desc)
  end

  def who_we_are

  end

  def contacts

  end

end
