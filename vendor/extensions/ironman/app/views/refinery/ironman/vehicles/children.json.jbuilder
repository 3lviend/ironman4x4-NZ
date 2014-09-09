json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name
end
