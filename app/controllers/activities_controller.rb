class ActivitiesController < ApplicationController

  def create
    @person = Person.find(params[:person_id])
    @person.activities.create(activity_params)
    redirect_to root_path
  end

  private

  def activity_params
    params.require(:activity).permit(:name)
  end
end
