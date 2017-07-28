json.extract! pic, :id, :gallery_id, :original_url, :oss_url, :code, :visit_count, :created_at, :updated_at
json.url pic_url(pic, format: :json)
