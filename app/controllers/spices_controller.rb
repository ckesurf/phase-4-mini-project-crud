class SpicesController < ApplicationController
  wrap_parameters format: []
# rescue_from ActiveRecord::RecordNotFound, :render_not_found

  def index
    spices = Spice.all
    render json: spices
  end

  
  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end

  def update
    # spice = Spice.update(spice_params)
    spice = Spice.find(params[:id])
    spice.update(spice_params) # {title: "chris spice"}
    render json: spice
  end

  def destroy 
    spice = Spice.find(params[:id])
    spice.destroy 
    # head :no_content
  end

  # def render_not_found
  #   render json: {error: "hey! record not found" }
  # end
  
  private 
  
  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end

end
