# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'active_record'
require_relative './recipe_data.rb'

Recipe.destroy_all
Comment.destroy_all

drink_one = Recipe.create!(title: "Ginger Beer", img_url:"http://www.seriouseats.com/recipes/assets_c/2012/01/20120130-189715-ginger-beer-thumb-625xauto-214181.jpg", ingredients:
  "1 1/2 lb green ginger, 4 lb brown sugar, 1 1/2 gallons water, 1 lemon sliced, handful of cinnamon, handful of cloves, handful of rice",
directions:
  "Step 1. Grate ginger., Step 2. Add sugar to water and stir until dissolved., Step 3. Pour mixture onto grated ginger. , Step 4. Add lemon slices; cinnamon; cloves and rice., Step 5. Cover and leave for three days., Step 6. Strain mixture and enjoy." )

 appetizer_one = Recipe.create!(title: "Mini Burgers", img_url:"http://bonappetitcrepecompany.com/wp-content/uploads/2016/04/mini-burger-4.jpg",
 ingredients:
   "1 lb ground chuck, 1/4 lb boneless short rib; minced, 6 mini brioche buns; split and toasted, Ketchup and pickle slices for serving",
   directions:
     "Step 1. Light a grill., Step 2. Combine the chuck and short rib; season with salt and pepper., Step 3. Form the meat into six patties., Step 4. Grill over high heat; turn once- about six minutes for medium-rare., Step 5. Place burgers on the toasted buns; top with ketchup and pickles.")

   main_dish_one = Recipe.create!(title: "Prawn Curry", img_url:"http://goodtoknow.media.ipcdigital.co.uk/111/00000cb72/19ad/Prawn-coconut-curry.jpg",
   ingredients:
     "1 lb prawns, 1 small coconut, 1/4 lb onion, 3 cloves garlic, 2 tsb gheera, 2 bay leaves, salt to taste, 1 tbs ghee, 1/4 pint oil, pepper to taste, 2 tsp tumeric,
     1/2 oz curry powder",
     directions:
     "Step 1. Grate coconut. Set aside 2 tbsp of it. Add 1/2 pint water to rest of grated coconut and squeeze out milk., Step 2. Chop onions and garlic; put oil in pot and fry lightly with bay leaves., Step 3. Add tumeric; curry powder and gheera and fry for a minute., Step 4. Add prawns and grated coconut, salt and pepper. Fry for a few minutes., Step 5. Add coconut milk; stir and cover pot. Boil on medium heat until prawns are cooked; about five minutes., Step 6. Add ghee before removing from heat., Step 7. Serve hot with rice; sprinkled with rest of grated coconut.")

   dessert_one = Recipe.create!(title: "Homemade Ice Cream", img_url:"http://getinspiredeveryday.com/food/wp-content/uploads/sites/5/2013/11/Homemade-Maple-Ice-Cream-GI-365-61.jpg",
   ingredients:
     "1 pint milk, 2 tbsp cornstarch or custard powder, 3 eggs, 2 oz sugar, flavoring (if desired)",
   directions:
     "Step 1. Blend custard powder with a little cold milk., Step 2. Heat the rest of the milk and add to blended custard powder., Step 3. Bring to boil and let it boil for about 3 minutes. Remove from the heat., Step 4. Add boiled mixture to beaten egg and sugar immediately; stirring all the time. Add flavoring., Step 5. Cool and Freeze., Step 6. Enjoy.")

     comment_drink = Comment.create!(title: "Best Ginger Beer Recipe EVER!!!", author: "Lynette", body: "This recipe was so easy to follow and I can't believe how authentic tasting it came out! Thank-you for sharing this fab recipe!", recipe: drink_one)
     comment_appetizer = Comment.create!(title: "Not too sure about these burgers", author: "Ariel", body: "I was a little disappointed in this recipe, I'm not sure what went wrong but they certainly didn't taste like the real deal.", recipe: appetizer_one)
     comment_main_dish = Comment.create!(title: "Spicy GOODNESS!!", author: "Marie", body: "OH EM GEE! This is the best damn thing I've ever had in my life! Thank-you for posting this recipe!", recipe: main_dish_one)
     comment_dessert = Comment.create!(title: "Delicious goodness or Flop?", author: "LaToya", body: "this ice cream all depends on the type of custard powder used which a little bit of a disappointment but nevertheless, still a great recipe.", recipe: dessert_one)
