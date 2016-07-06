json.array!(@vents) do |vent|
  json.extract! vent, :id, :title, :user, :vent_text
  json.url vent_url(vent, format: :json)
end
