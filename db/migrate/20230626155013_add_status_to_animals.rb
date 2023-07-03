class AddStatusToAnimals < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :status, :string
  end
end
