class AnimalGameController < ApplicationController
  def play
    make_move('lion', 'roar')
  end

  def make_move(name, action)
    animal = Animal.find_by(name: name)

    case action
    when 'roar'
      animal.update(status: 'roaring')
    else
      # Handle other moves/actions
    end

    animal.save

    redirect_to animals_path
  end
end
