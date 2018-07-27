json.extract! post, :id, :title, :desc, :price, :address_start, :address_end, :hour_start, :hour_end, :date_start, :date_end, :created_at, :updated_at
json.url post_url(post, format: :json)
