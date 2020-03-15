class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.text :to
      t.text :title
      t.text :description
      t.text :image
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
