# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Recipe.destroy_all
User.destroy_all
Ingredient.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all


ryan = User.create(username: "Ryan")
yo = User.create(username: "Yo")
joe = User.create(username: "Joe")

ramen = Recipe.create(name: "Ramen", user_id: ryan.id)
pizza = Recipe.create(name: "Pizza", user_id: yo.id)
burger = Recipe.create(name: "Burger", user_id: ryan.id)
taco = Recipe.create(name: "Taco", user_id: yo.id)
spaghetti = Recipe.create(name: "Spaghetti", user_id: ryan.id)

noodle = Ingredient.create(name: "Noodle")
tomato = Ingredient.create(name: "Tomato")
cheese = Ingredient.create(name: "Cheese")
milk = Ingredient.create(name: "Milk")
beef = Ingredient.create(name: "Beef")

a1 = Allergy.create(user_id: ryan.id, ingredient_id: beef.id)
a2 = Allergy.create(user_id: yo.id, ingredient_id: cheese.id)
a3 = Allergy.create(user_id: yo.id, ingredient_id: tomato.id)
a1 = Allergy.create(user_id: ryan.id, ingredient_id: tomato.id)

r1 = RecipeIngredient.create(recipe_id: ramen.id, ingredient_id: noodle.id)
r2 = RecipeIngredient.create(recipe_id: burger.id, ingredient_id: beef.id)
r3 = RecipeIngredient.create(recipe_id: ramen.id, ingredient_id: beef.id)
r4 = RecipeIngredient.create(recipe_id: burger.id, ingredient_id: cheese.id)
r5 = RecipeIngredient.create(recipe_id: taco.id, ingredient_id: tomato.id)
r6 = RecipeIngredient.create(recipe_id: taco.id, ingredient_id: beef.id)

