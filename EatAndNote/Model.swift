//
//  Model.swift
//  EatAndNote
//
//  Created by MAC923_40 on 16/2/2566 BE.
//


import SwiftUI
import Foundation
 
struct Foods: Identifiable, Hashable {
    public var id: Int
    public var image: String
    public var name: String
    public var info1: String
    public var ingredients: String
    public var step: String
    public var carb: Int
    public var fats: Int
    public var protien: Int
    public var kcal: Int
}
 
var foodData = [
    Foods(id: 0, image: "food0", name: "Tuna spaghetti", info1: "Carb: 100 Fat: 100 Protien: 100",
         ingredients:
         " •    150g spaghetti or linguine \n •    1 tbsp olive oil \n •    1 garlic clove, sliced \n •    1 red chilli, deseeded and finely chopped, plus extra to serve (optional) \n •    1 tbsp drained capers \n •    small bunch of parsley, finely chopped (stalks included) \n •    145g tuna in spring water, drained \n •    90g rocket or baby spinach leaves \n •    ½ lemon, juiced" ,
          step: "•    STEP 1 Cook the spaghetti for 9-11 mins in a large pan of well-salted water until al dente.  \n•    STEP 2 Heat the oil in a wide frying pan over a very low heat, and gently cook the garlic and chilli to infuse the oil. Remove from the heat if the garlic is turning past light golden, as this will make it bitter.  \n•    STEP 3 Drain the pasta, keeping a cupful of the cooking water, and tip the spaghetti into the frying pan. Toss the pasta in the oil over a low heat, adding a little of the pasta water to emulsify into a sauce that coats the pasta, then fold in the capers, parsley, tuna and some seasoning. Don’t stir too vigorously – you want to keep larger chunks of tuna. Toss the rocket and lemon juice through the spaghetti, and serve with extra chilli scattered over, if you like. ",carb: 57 , fats: 9  , protien: 23 , kcal: 400),
    
    
    Foods(id: 1, image: "food1", name: "Burrito bowl", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "    •    125g basmati rice\n •    1 tbsp olive oil\n •    2 garlic cloves, chopped\n •    400g can black beans, drained and rinsed\n •    1 tbsp cider vinegar",
        step: "    •    STEP 1Cook the rice following pack instructions, then drain and return to the pan to keep warm. In a frying pan, heat the oil, add the garlic and fry for 2 mins or until golden. Add the beans, vinegar, honey and chipotle. Season and warm through for 2 mins.  \n •    STEP 2 Boil the kale for 1 min, then drain, squeezing out any excess water. Divide the rice between big shallow bowls and top with the beans, kale, avocado, tomato and onion. Serve with hot sauce, coriander and lime wedges, if you like. ",carb: 72 , fats: 21  , protien: 16, kcal: 573),


    Foods(id: 2, image: "food2", name: "Chicken parmigiana", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "    •    2 large, skinless chicken breasts, halved through the middle\n •    2 eggs, beaten\n •    75g breadcrumb\n •    75g parmesan, grated\n •    1 tbsp olive oil\n •    2 garlic cloves, crushed\n •    half a 690ml jar passata\n •    1 tsp caster sugar\n •    1 tsp dried oregano\n •    half a 125g ball light mozzarella, torn",
          step: "    •    STEP 1 Halve 2 large skinless chicken breasts through the middle then place the 4 pieces between cling film sheets and bash out with a rolling pin until they are the thickness of a £1 coin.  \n •    STEP 2 Dip in 2 beaten eggs, then 75g breadcrumbs, mixed with half of the 75g grated parmesan. Set aside on a plate in the fridge while you make the sauce.  \n •    STEP 3 Heat 1 tbsp olive oil and cook 2 crushed garlic cloves for 1 min, then tip in half a 690ml jar passata, 1 tsp caster sugar and 1 tsp dried oregano. Season and simmer for 5-10 mins.  \n •    STEP 4 Heat grill to High and cook the chicken for 5 mins each side, then remove.  \n •    STEP 5 Pour the tomato sauce into a shallow ovenproof dish and top with the chicken.  \n •    STEP 6 Scatter over torn pieces of half a 125g ball light mozzarella, and the remaining grated parmesan and grill for 3-4 mins until the cheese has melted and the sauce is bubbling.  \n •    STEP 7 Serve with vegetables or salad and some pasta or potatoes, if you like. ",
          
          
          carb: 22 , fats: 13  , protien: 33, kcal: 327),


    Foods(id: 3, image: "food3", name: "Fridge-raid fried rice", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "•    2 tbsp vegetable oil\n •    1 white onion, finely chopped\n •    1 carrot, finely chopped\n •    100g green beans, chopped\n •    1 red or yellow pepper, finely chopped\n •    ½ medium broccoli, chopped into small florets\n •    150g cooked chicken (or any other meat), roughly chopped, optional\n •    300g cold cooked rice\n •    2 eggs, beaten\n •    1 tbsp sesame oil\n •    1 tbsp oyster sauce\n •    1 spring onion, finely sliced\n •    1 tsp toasted sesame seeds",
          step: "•    STEP 1Heat half the vegetable oil in a wok or a frying pan over a medium-high heat, and stir-fry the onions, carrots and green beans for 5 mins. Add the peppers, broccoli and chicken, and stir-fry for 3 mins more.  \n •    STEP 2Tip in the rice and stir-fry for another 4 mins until all the grains of rice have separated. Push the rice and vegetables to the side, then add the remaining vegetable oil to the other. Crack in the egg and scramble briefly before stirring into the veg and chicken mixture.  \n •    STEP 3Stir in the sesame oil and oyster sauce to coat, then garnish with the spring onions and sesame seeds. ",carb: 29 , fats: 20  , protien: 20, kcal: 388),


    Foods(id: 4, image: "food4", name: "Pesto eggs on toast", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "•    2-4 thin slices rye sourdough (about 70g total, depending on the size of the loaf)\n •    2 eggs\n •    170g tomatoes on-the-vine\n •    160g baby spinach\n •    pinch of chilli flakes (optional) For the pesto\n •    1 garlic clove\n •    10g basil\n •    1 tbsp pine nuts\n •    1 tbsp rapeseed oil\n •    1 tbsp finely grated parmesan or vegetarian alternative",
          step: "•    STEP 1To make the pesto, peel the garlic clove and put in a small food processor along with the basil, pine nuts, oil and 2 tbsp water. Blitz until smooth, then stir in the cheese. Or, blitz using a hand blender.  \n •    STEP 2Toast the bread and divide between two plates. Cook the pesto in a frying pan over a medium heat for 30 seconds, stirring. Crack the eggs into one side of the pan, put the tomatoes in the other, and fry in the pesto until the eggs are cooked to your liking.  \n •    STEP 3Lift out the eggs and put each one on a slice of toast. Add the spinach to the pan with the tomatoes, turn the heat up to high and cook until wilted, about 2-3 mins. The tomatoes should be soft. Spoon the veg onto the other toast slice and sprinkle with the chilli flakes, if you like. ",carb: 17 , fats: 17  , protien: 15, kcal: 287),


    Foods(id: 5, image: "food5", name: "Spiced carrot soup", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "    •    2 tsp cumin seeds\n •    pinch chilli flakes\n •    2 tbsp olive oil\n •    600g carrots, washed and coarsely grated (no need to peel)\n •    140g split red lentils\n •    1l hot vegetable stock (from a cube is fine)\n •    125ml milk (to make it dairy-free, see 'try' below)\n •    plain yogurt and naan bread, to serve",step: "•    STEP 1 Heat a large saucepan and dry-fry 2 tsp cumin seeds and a pinch of chilli flakes for 1 min, or until they start to jump around the pan and release their aromas.  \n •    STEP 2 Scoop out about half with a spoon and set aside. Add 2 tbsp olive oil, 600g coarsely grated carrots, 140g split red lentils, 1l hot vegetable stock and 125ml milk to the pan and bring to the boil.  \n •    STEP 3 Simmer for 15 mins until the lentils have swollen and softened.  \n •    STEP 4 Whizz the soup with a stick blender or in a food processor until smooth (or leave it chunky if you prefer).  \n •    STEP 5 Season to taste and finish with a dollop of plain yogurt and a sprinkling of the reserved toasted spices. Serve with warmed naan breads. ",carb: 34 , fats: 7  , protien: 11, kcal: 238),


    Foods(id: 6, image: "food6", name: "Chilli chicken curry", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "    •    1 medium onion, roughly chopped\n •    3cm root ginger, roughly chopped\n •    2 garlic cloves, roughly chopped\n •    2 tbsp vegetable oil\n •    1 tsp cumin seeds\n •    ½ tsp turmeric\n •    ¼ tsp hot chilli powder or ½ tsp cayenne pepper\n •    230g can chopped tomatoes\n •    350g potato, peeled and cut into rough chunks\n •    500g boneless skinless chicken breasts, cut into 3cm chunks\n •    ½ tsp garam masala\n •    2 tbsp chopped fresh coriander\n •    natural yogurt, to serve",step: "    •    STEP 1Blitz the onion, ginger and garlic in a food processor with 1 tbsp water until smooth.  \n •    STEP 2Fry the cumin seeds in oil for a few seconds. Add the onion paste and brown over a medium heat. Add a dash of water if it starts to catch.  \n •    STEP 3Sprinkle in the turmeric and chilli. Add the tomatoes and fry for 5 minutes. Stir in the potatoes and 250ml/9fl oz hot water. Cook covered for 10 minutes.  \n •    STEP 4Add the chicken and garam masala. Simmer for 15-20 minutes until cooked. Season with salt. Tip into a bowl, scatter over coriander and serve with flavoured rice and natural yogurt. ",carb: 21 , fats: 9  , protien: 34, kcal: 283),


    Foods(id: 7, image: "food7", name: "Blueberry pancakes", info1: "Carb: 100 Fat: 100 Protien: 100", ingredients: "•    200g plain flour\n •    1 tsp cream of tartar\n •    ½ tsp bicarbonate of soda\n •    1 tsp golden syrup\n •    75g blueberry\n •    zest 1 lemon\n •    200ml milk\n •    1 large egg\n •    butter, for cooking",step: "•    STEP 1First, put the flour, cream of tartar and bicarbonate of soda in the bowl. Mix them well with the fork. Drop the golden syrup into the dry ingredients along with the blueberries and lemon zest.  \n •    STEP 2Pour the milk into a measuring jug. Now break in the egg and mix well with a fork. Pour most of the milk mixture into the bowl and mix well with a rubber spatula. Keep adding more milk until you get a smooth, thick, pouring batter.  \n •    STEP 3Heat the frying pan and brush with a little butter. Then spoon in the batter, 1 tbsp at a time, in heaps. Bubbles will appear on top as the pancakes cook – turn them at this stage, using the metal spatula to help you. Cook until brown on the second side, then keep warm on a plate, covered with foil. Repeat until all the mixture is used up. ",carb: 21 , fats: 1  , protien: 2, kcal: 69),

    
]
