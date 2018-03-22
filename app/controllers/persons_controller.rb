class PersonsController < ApplicationController

  def index
    @ben = Person.includes(:activities).first
    @activity = Activity.new()
  end

  def show
    redirect_to root_path
  end
  
end
