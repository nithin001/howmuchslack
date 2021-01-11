json.extract! slack, :id, :user_id, :hours, :minutes, :created_at, :updated_at
json.url slack_url(slack, format: :json)
