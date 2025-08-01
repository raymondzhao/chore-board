class ChoresController < ActionController::API
  def index
    chores = Chore.all
    render json: chores
  end
end