json.extract! book, :id, :user_id, :image_id, :theme_id, :name, :author, :description, :release, :created_at, :updated_at
json.url book_url(book, format: :json)