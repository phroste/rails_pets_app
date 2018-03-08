class PetsController < ApplicationController

  # get all pets
  def index
    pets = Pet.all
    render json: pets
  end

  # get method
  def show
    pet = Pet.find(params[:id])
    render json: pet
  end

  # post method
  def create
    p "in create. pet_params:", pet_params
    pet = Pet.create!(pet_params)
    render json: pet
  end

  # put method
  def update
    pet = Pet.find(params[:id])
    pet.update!(pet_params)
    render json: pet
  end

  # delete method
  def destroy
    pet = Pet.find(params[:id])
    pet.destroy!
    render plain: "pet DELETED!"
  end

  private

  # defining the variable pet_params...
  def pet_params
    params.require(:pet).permit(:pet_name, :pet_specie, :pet_image, :owner_id)
  end

end
