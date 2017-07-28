json.extract! gallery, :id, :name, :count_pic, :cat_id, :click_count, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
