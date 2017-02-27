class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.string :img_url
      t.string :ingredients

      t.timestamps
    end
  end
end
