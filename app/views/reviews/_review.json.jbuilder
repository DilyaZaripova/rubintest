json.extract! review, :id, :user_id, :book_id, :text, :created_at, :updated_at
json.url review_url(review, format: :json)