class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :Name
      t.string :preperationtime
      t.string :cookingtime
      t.string :description
      t.boolean :public

      t.timestamps
    end
  end
end
