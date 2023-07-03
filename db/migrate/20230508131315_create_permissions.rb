class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :permission_level

      t.timestamps
    end
  end
end
