class AddColumnOriginalHrefToGallery < ActiveRecord::Migration
  def change
    add_column :galleries,:original_href,:string
    add_column :cats,:original_href,:string
    
  end
end
