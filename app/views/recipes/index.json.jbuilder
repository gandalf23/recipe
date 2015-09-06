json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :rating, :instructions, :user_id_id
  json.url recipe_url(recipe, format: :json)
end
