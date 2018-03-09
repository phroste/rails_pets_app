class PetsController < ApplicationController

  # get all pets
  def index
    @pets = Pet.all
  end

  # get method for individual pet
  def show
    @pet = Pet.find(params[:id])
  end

  def new 
    @pet = Pet.new
  end

  # post method
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to @pet
    else
      render :action => :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  # put method
  def update 
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params)
      redirect_to @pet
    else
      render :action => :edit
      # render 'edit'
    end
  end

  # delete method
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_url
  end

  private
  # defining the variable pet_params...
  def pet_params
    params.require(:pet).permit(:pet_name, :pet_specie, :pet_image, :owner_id)
  end

end
