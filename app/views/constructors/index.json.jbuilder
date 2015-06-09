json.array!(@constructors) do |constructor|
  json.extract! constructor, :id
  json.url constructor_url(constructor, format: :json)
end
