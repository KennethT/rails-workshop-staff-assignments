class AssignmentsController < ApplicationController

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    @person = Person.find(params[:id])
    if @assignment.save
      redirect_to person_path(@person)
    else
      flash.now[:alert] = "Please select a location and enter a role"
      render :new
    end
  end


  private

  def assignment_params
    params.require(:assignment).permit(:location_id, :person_id, :role)
  end

end
