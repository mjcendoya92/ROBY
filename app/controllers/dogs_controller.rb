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
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dogs_path(@dog)
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :sex, :description, :photo, :background_photo, extra_photos: [])
  end

end
