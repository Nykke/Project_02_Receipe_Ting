class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :primary_color
      t.string :secondary_color
      t.string :img_url

      t.timestamps
    end
  end
end
