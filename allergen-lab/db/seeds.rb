# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



UserIngredient.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

me = User.create(name: "ayelet")
milk = Ingredient.create(name: "milk")
cereal = Ingredient.create(name: "cereal")
cnm = Recipe.create(name: "cnm", user: me)
RecipeIngredient.create(recipe: cnm, ingredient: milk)
RecipeIngredient.create(recipe: cnm, ingredient: cereal)
mine = Recipe.create(name: "mine", user: me)
RecipeIngredient.create(recipe: mine, ingredient: milk)
RecipeIngredient.create(recipe: mine, ingredient: milk)
RecipeIngredient.create(recipe: mine, ingredient: cereal)
UserIngredient.create(user: me, ingredient: milk)

