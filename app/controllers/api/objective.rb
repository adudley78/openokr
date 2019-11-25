class ObjectivesController < ApplicationController

  def index
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def objective_params
    params.require(:objective).permit(:description, :score, :label, :type, :user_id)
  end
  

end