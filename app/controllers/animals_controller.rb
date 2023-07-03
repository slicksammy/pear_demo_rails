class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path, notice: 'Animal created successfully'
    else
      render :new
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end
end
