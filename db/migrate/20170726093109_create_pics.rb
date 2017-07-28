class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.integer :gallery_id
      t.string :original_url
      t.string :oss_url
      t.integer :code
      t.integer :visit_count

      t.timestamps null: false
    end
  end
end
