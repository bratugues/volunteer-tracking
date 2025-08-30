class ShiftsController < ApplicationController
  def new
    @volunteer = Volunteer.find(params[:volunteer_id])
    @shift = Shift.new
  end

  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @shift = Shift.new(shift_params)
    @shift.volunteer = @volunteer
    if @shift.save
      redirect_to @volunteer
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @shift = Shift.find(params[:id])
    @volunteer = @shift.volunteer
    @shift.destroy
    redirect_to @volunteer
  end

  def shift_params
    params.require(:shift).permit(:feedback, :event_id)
  end
end
