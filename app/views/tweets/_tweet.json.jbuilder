json.extract! tweet, :id, :body, :created_at, :updated_at, :username
json.url tweet_url(tweet, format: :json)
