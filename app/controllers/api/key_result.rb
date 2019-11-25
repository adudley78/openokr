class KeyResultsController < ApplicationController

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

def key_results_params
  params.require(:key_results).permit(:description, :measure, :due_date, :user_id)
end


end