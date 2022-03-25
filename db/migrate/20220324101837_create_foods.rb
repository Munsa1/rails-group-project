class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :Name
      t.string :unit
      t.decimal :price

      t.timestamps
    end
  end
end
