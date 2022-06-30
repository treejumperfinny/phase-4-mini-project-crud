class SpicesController < ApplicationController
  def index
    render json: Spice.all
  end

  def show
    render json: Spice.find_by(id: params[:id])
  end

  def create 
    spice = Spice.create(spice_params)
    render json: spice, staus: :created
  end 

  def update
    spice = Spice.find_by(id: params[:id])
    if spice 
      spice.update(spice_params)
      render json: spice, status: :created
    else
      render json: {error: "OPE. Spice not here buddy."}, staus: :not_found
    end  
  end
    
  def destroy
    spice = Spice.find_by(id: params[:id])
    if spice 
      spice.destroy
      head :no_content
    else
      render json: {error: "OPE. Spice not here buddy."}, staus: :not_found
    end
  end

  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end

end
