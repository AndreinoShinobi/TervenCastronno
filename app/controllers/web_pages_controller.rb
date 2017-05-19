class WebPagesController < ApplicationController

  def home

  end

  def our_events
    render json: 'our_events'
  end

  def who_we_are
    render json: 'who we are'
  end
end
