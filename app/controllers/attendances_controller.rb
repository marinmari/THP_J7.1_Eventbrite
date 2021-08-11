class AttendancesController < ApplicationController

  def new 
    @user = current_user
    @attendance = Attendance.new()
    @event = Event.find(params[:event_id])
  end 


end
