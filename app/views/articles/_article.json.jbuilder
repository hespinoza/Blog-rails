json.extract! article, :id, :name, :image, :body, :video, :plot, :category, :visits_count, :admin_id, :state, :slug, :created_at, :updated_at
json.url article_url(article, format: :json)
