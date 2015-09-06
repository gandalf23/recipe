json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :ingredientname, :recipe_id_id
  json.url ingredient_url(ingredient, format: :json)
end
