class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @people = @event.people
    respond_to do |format|
        format.html
        format.json {
          render :json => @people.to_json
        }
    end
  end
end
