json.array!(@blueprints) do |blueprint|
  json.extract! blueprint, :name
  json.url blueprint_url(blueprint, format: :json)
end