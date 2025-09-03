json.extract! post, :id, :title, :content, :publish_date, :active, :permalink, :created_at, :updated_at
json.url post_url(post, format: :json)
