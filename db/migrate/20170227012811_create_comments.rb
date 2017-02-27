class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :author
      t.string :body
      t.references :recipe, null: false, index: true

      t.timestamps
    end
  end
end
