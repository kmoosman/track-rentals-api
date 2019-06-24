class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.new(event_params)
  
    if @event.save
      # binding.pry
      5.times do |i|
        Transponder.create({ number: i+1, rented: false, rented_by: "", event_id: @event.id})
      end 
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def update 
    number = params[:number]
    event_id = params[:event_id]
    rented = params[:rented]
    rented_by = params[:rented_by]

    @event = Event.find(event_id)
    # binding.pry
    
    @transponder = Transponder.find(@event.transponders.find_by(number: number).id)
    @transponder.rented = false
    @transponder.rented_by = ""
    
    if @transponder.save
      render json: @event
    else 
      render json: @transponder.errors, status: :unprocessable_entity
    end
  end 

  private 
  def event_params
    params.require(:event).permit(:name, :date, :location)
  end

end
