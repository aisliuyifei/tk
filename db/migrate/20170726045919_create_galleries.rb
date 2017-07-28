class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :count_pic
      t.integer :cat_id
      t.integer :click_count

      t.timestamps null: false
    end
  end
end
