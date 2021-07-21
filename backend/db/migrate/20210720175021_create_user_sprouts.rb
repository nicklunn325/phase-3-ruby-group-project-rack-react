class CreateUserSprouts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sprouts do |t|
      t.integer :user_id
      t.integer :sprout_id
      t.boolean :is_live?

      t.timestamps
    end
  end
end
