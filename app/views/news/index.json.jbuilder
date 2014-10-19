json.array!(@news) do |news|
  json.extract! news, :id, :url, :title, :summary, :order
  json.url news_url(news, format: :json)
end
