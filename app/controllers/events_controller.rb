binding.pry
class EventsController < ApplicationController

  def index
    @events = Event.all
    binding.pry
  end

end
