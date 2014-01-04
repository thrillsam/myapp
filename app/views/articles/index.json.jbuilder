json.array!(@articles) do |article|
  json.extract! article, :name, :description, :post_id
  json.url article_url(article, format: :json)
end
