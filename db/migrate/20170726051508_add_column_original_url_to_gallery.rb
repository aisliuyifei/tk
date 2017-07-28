class AddColumnOriginalUrlToGallery < ActiveRecord::Migration
  def change
    add_column :galleries,:original_url,:string
    add_column :galleries,:oss_url,:string
  end
end
