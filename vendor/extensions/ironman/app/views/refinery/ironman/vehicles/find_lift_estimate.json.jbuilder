unless @hash_value[0].blank?
  json.array! @hash_value, :id, :name
end