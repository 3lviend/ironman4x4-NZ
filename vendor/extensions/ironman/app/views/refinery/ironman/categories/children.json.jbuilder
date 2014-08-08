json.array!(@categories) do |category|
  json.extract! category, :slug, :name
end
