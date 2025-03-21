# @param {String[]} recipes
# @param {String[][]} ingredients
# @param {String[]} supplies
# @return {String[]}
def find_all_recipes(recipes, ingredients, supplies)
  @items = recipes.zip(ingredients).to_h
  supplies.each do |supply|
    @items[supply] = true
  end

  recipes.select do |recipe|
    check(recipe)
  end
end

def check(ingredient)
  return false unless @items[ingredient]
  return true if @items[ingredient] == true

  ingredients = @items[ingredient]
  @items[ingredient] = false
  @items[ingredient] = ingredients.all? { |item| check(item) }
end