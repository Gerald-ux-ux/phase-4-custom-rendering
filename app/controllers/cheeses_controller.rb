class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese
      render json: cheese , only: [:id, :name, :is_best_seller]
    else
      render json: {error: "Couldn't find cheese"}, status: :not_found
    end
    
    
  end

end
