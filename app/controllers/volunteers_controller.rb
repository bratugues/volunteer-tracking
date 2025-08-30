class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to volunteer_path(@volunteer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name)
  end
end
