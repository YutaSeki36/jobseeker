class CalendarController < ApplicationController
  def index
    @events = Event.where(user_id:current_user.id)
  end
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to controller: 'calendar', action: 'index', notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
