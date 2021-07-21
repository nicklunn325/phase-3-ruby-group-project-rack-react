class CreateSprouts < ActiveRecord::Migration[5.2]
  def change
    create_table :sprouts do |t|
      t.string :name
      t.string :description
      t.integer :number_of_days
      t.string :instructions
    end
  end
end
