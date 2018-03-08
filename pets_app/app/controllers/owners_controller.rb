class OwnersController < ApplicationController

  # get all owners
  def index
    owners = Owner.all
    render json: owners
  end

  # get method
  def show
    owner = Owner.find(params[:id])
    render json: owner
  end

  # post method
  def create
    p "in create. owner_params:", owner_params
    owner = Owner.create!(owner_params)
    render json: owner
  end

  # put method
  def update
    owner = Owner.find(params[:id])
    owner.update!(owner_params)
    render json: owner
  end

  # delete method
  def destroy
    owner = Owner.find(params[:id])
    owner.destroy!
    render plain: "owner DELETED!"
  end

  # allows us to get/view all of the pets associated 
  # by owner id at this route 'localhost:3000/owners/:id/pets'
  def pets_by_owner
    owner = Owner.find(params[:id])
    render json: owner.pets
  end

  private

  # defining the variable owner_params
  def owner_params
    params.require(:owner).permit(:owner_name)
  end

end



