class AddTokenToCatAndGallery < ActiveRecord::Migration
  def change
    add_column :cats,:token,:string
    add_column :galleries,:token,:string
  end
end
