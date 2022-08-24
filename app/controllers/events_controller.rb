class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    authorize @event
    @artists = @event.event_members.filter { |member| member.user.artist? }
    @staffs = @event.event_members.filter { |member| member.user.staff? }
    @securities = @event.event_members.filter { |member| member.user.security? }
    @markers = [
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
    ]
    @tasks = @event.tasks.where(task_id: nil)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.event_members.push(:current_user)
    # If there's more than one event_members (which there will be), do I just push current user into it instead of saving?
    raise
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      raise
      render :new, alert: "Event did not save"
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :start_date, :end_date, :poster_url)
  end
end
