json.array!(@bookstores) do |bookstore|
  json.extract! bookstore, :id, :title, :description, :author, :price
  json.url bookstore_url(bookstore, format: :json)
end
