class RegistrationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    if signed_up?
      flash[:alert] = 'You already Signed up for this event'
    else
      @event.attendees << current_user
      flash[:notice] = 'Successfully Registered'
    end
    redirect_to @event
  end

  private

  def signed_up?
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    Registration.exists?(attendee_id: @user, attended_event_id: @event)
  end
end
