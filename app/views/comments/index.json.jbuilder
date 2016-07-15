json.array!(@comments) do |comment|
  json.extract! comment, :id, :vent_id, :user_id, :comment_text
  json.url comment_url(comment, format: :json)
end
