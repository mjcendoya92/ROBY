class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
      if @dog.save
        redirect_to dog_path(@dog)
      else
        render :new, status: :unprocesable_entitiy
      end
  end

  def show
    @dogs = Dog.where(user: current_user)
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :sex, :description)
  end
end
