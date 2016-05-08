FactoryGirl.define do
  meal_types = [
      "Danie główne",
      "Pizza",
      "Sałatka",
      "Sos",
      "Burger",
      "Kanapka",
      "Makaron",
      "Napój",
      "Kebab",
      "Zupa",
      "Ciasto",
      "Taco",
      "Tortilla",
      "Sushi",
      "Pierogi",
      "Krewetki"
    ]

  data = [
      {
        name: "Wartburger",
        shipping_cost: 6.0,
        meals: [
          {
            meal_type: "Burger",
            name: "Burger Koza Węgierka",
            price: 17
          },
          {
            meal_type: "Burger",
            name: "Burger Mixol BBQ",
            price: 15
          },
          {
            meal_type: "Burger",
            name: "Burger MajoJajo",
            price: 16
          },
          {
            meal_type: "Burger",
            name: "Burger Zkurburg",
            price: 16
          },
          {
            meal_type: "Burger",
            name: "Burger Serburg",
            price: 14
          },
          {
            meal_type: "Burger",
            name: "Burger Klasyk",
            price: 13
          },
          {
            meal_type: "Burger",
            name: "Burger Baca Wege",
            price: 15
          },
          {
            meal_type: "Burger",
            name: "Burger Cyburg",
            price: 16
          },
          {
            meal_type: "Burger",
            name: "Burger Rześki",
            price: 15
          },
          {
            meal_type: "Burger",
            name: "Burger Wartburger",
            price: 19
          }
        ]
      },
      {
        name: "Sushi Takai",
        shipping_cost: 1.0,
        meals: [
          {
            meal_type: "Zupa",
            name: "Zupa Miso klasyczna",
            price: 5
          },
          {
            meal_type: "Pierogi",
            name: "Pierożki Gyoza z owocami morza",
            price: 10
          },
          {
            meal_type: "Zupa",
            name: "Zupa",
            price: 12
          },
          {
            meal_type: "Krewetki",
            name: "Krewetki w tempurze z sosem teryaki",
            price: 30
          },
          {
            meal_type: "Sałatka",
            name: "Sałatka z wodorostów wakame",
            price: 9
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i awokado",
            price: 26
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i tykwą",
            price: 24
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i krewetką",
            price: 26
          },
          {
            meal_type: "Sushi",
            name: "Oshi z rzodkwią",
            price: 20
          },
          {
            meal_type: "Sushi",
            name: "Oshi z rzodkwią i sezamem",
            price: 22
          },

        ]
      },
      {
        name: "Mexico Bar",
        shipping_cost: 8.0,
        meals: [
          {
            meal_type: "Taco",
            name: "Queso Nachos",
            price: 17
          },
          {
            meal_type: "Tortilla",
            name: "Tortilla Chilli Con Carne",
            price: 21
          },
          {
            meal_type: "Tortilla",
            name: "Zestaw dwóch tortilli",
            price: 17.50
          },
          {
            meal_type: "Tortilla",
            name: "Zestaw czterech tortilli",
            price: 29
          },
          {
            meal_type: "Taco",
            name: "Tacos",
            price: 18
          },
          {
            meal_type: "Taco",
            name: "Burrito",
            price: 17
          },
          {
            meal_type: "Taco",
            name: "Queso Nachos",
            price: 4
          },
          {
            meal_type: "Taco",
            name: "Quesadilla",
            price: 15.50
          },
          {
            meal_type: "Taco",
            name: "Don Burrito",
            price: 21.50
          },
          {
            meal_type: "Taco",
            name: "Nachos Con Guacamole",
            price: 7
          }
        ]
      },
      {
        name: "Pizza Station",
        shipping_cost: 1.0,
        meals: [
          {
            meal_type: "Pizza",
            name: "Pizza Texas",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Philadelphia",
            price: 25
          },
          {
            meal_type: "Pizza",
            name: "Pizza Boston",
            price: 29
          },
          {
            meal_type: "Pizza",
            name: "Pizza Michigan",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Oregon",
            price: 17
          },
          {
            meal_type: "Pizza",
            name: "Pizza Alaska",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Dakota",
            price: 26
          },
          {
            meal_type: "Pizza",
            name: "Pizza California",
            price: 27
          },
          {
            meal_type: "Pizza",
            name: "Pizza Nevada",
            price: 26
          },
          {
            meal_type: "Pizza",
            name: "Pizza Indiana",
            price: 21
          }
        ]
      },
      {
        name: "Pizzeria Italia",
        shipping_cost: 6.0,
        meals: [
          {
            meal_type: "Pizza",
            name: "Pizza Italia",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capri",
            price: 17
          },
          {
            meal_type: "Pizza",
            name: "Pizza Vegetariana",
            price: 24
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capri",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Hawaii",
            price: 17
          },
          {
            meal_type: "Pizza",
            name: "Pizza Rafaello",
            price: 24
          },
          {
            meal_type: "Pizza",
            name: "Pizza Pepperoni",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capricioza",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Margerita",
            price: 12
          },
          {
            meal_type: "Pizza",
            name: "Pizza Napoli",
            price: 13
          }
        ]
      },
      {
        name: "Droga Mleczna",
        shipping_cost:  2.0,
        meals: [
          {
            meal_type: "Zupa",
            name: "Zupa Ramen",
            price: 10
          },
          {
            meal_type: "Burger",
            name: "Burger Królewski",
            price: 25
          },
          {
            meal_type: "Zupa",
            name: "Zupa dnia",
            price: 9
          },
          {
            meal_type: "Ciasto",
            name: "Banoffee",
            price: 10.50
          },
          {
            meal_type: "Kanapka",
            name: "Kanapka Jim Beam",
            price: 10
          },
          {
            meal_type: "Burger",
            name: "Cheese Burger",
            price: 19
          },
          {
            meal_type: "Burger",
            name: "Bekon Burger",
            price: 20
          },
          {
            meal_type: "Zupa",
            name: "Zupa Jarzynowa",
            price: 10
          },
          {
            meal_type: "Zupa",
            name: "Zupa Ogórkowa",
            price: 8
          },
          {
            meal_type: "Zupa",
            name: "Zupa Owocowa",
            price: 7
          }
        ]
      },
      {
        name: "Pizzeria Muzyczna",
        shipping_cost: 10.0,
        meals: [
          {
            meal_type: "Pizza",
            name: "Pizza Alternative",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Progressive",
            price: 23
          },
          {
            meal_type: "Pizza",
            name: "Pizza Minimal",
            price: 16
          },
          {
            meal_type: "Pizza",
            name: "Pizza Salsa",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Pop",
            price: 18
          },
          {
            meal_type: "Pizza",
            name: "Pizza Classic",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Soul",
            price: 21
          },
          {
            meal_type: "Pizza",
            name: "Pizza Chillout",
            price: 17
          },
          {
            meal_type: "Pizza",
            name: "Pizza Jazz",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Blues",
            price: 19
          }
        ]
      },
      {
        name: "Kebab King",
        shipping_cost: 3.0,
        meals: [
          {
            meal_type: "Kanapka",
            name: "Sandwich Meat Loaf",
            price: 15
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Bejrut",
            price: 13
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Ocean",
            price: 14
          },
          {
            meal_type: "Napój",
            name: "Coca-cola 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Napój",
            name: "Coca-cola zero 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Napój",
            name: "Sprite 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Burger",
            name: "We Will Rock You",
            price: 17
          },
          {
            meal_type: "Burger",
            name: "My Generation",
            price: 19
          },
          {
            meal_type: "Burger",
            name: "Born To Be Wild",
            price: 19
          },
          {
            meal_type: "Burger",
            name: "Highway To Hell",
            price: 20
          }
        ]
      },
      {
        name: "Rock Burger",
        shipping_cost: 8.0,
        meals: [
          {
            meal_type: "Kanapka",
            name: "Sandwich Meat Loaf",
            price: 15
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Bejrut",
            price: 13
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Ocean",
            price: 14
          },
          {
            meal_type: "Napój",
            name: "Coca-cola 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Napój",
            name: "Coca-cola zero 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Napój",
            name: "Sprite 0,3 l",
            price: 4.50
          },
          {
            meal_type: "Burger",
            name: "We Will Rock You",
            price: 17
          },
          {
            meal_type: "Burger",
            name: "My Generation",
            price: 19
          },
          {
            meal_type: "Burger",
            name: "Born To Be Wild",
            price: 19
          },
          {
            meal_type: "Burger",
            name: "Highway To Hell",
            price: 20
          }
        ]
      },
      {
        name: "Remont Bar",
        shipping_cost: 1.0,
        meals: [
          {
            meal_type: "Sałatka",
            name: "Sałatka z Grillowanym Kurczakiem",
            price: 18
          },
          {
            meal_type: "Sałatka",
            name: "Sałatka z Grillowanym Łososiem",
            price: 22
          },
          {
            meal_type: "Sos",
            name: "Sos pieczarkowy",
            price: 4
          },
          {
            meal_type: "Makaron",
            name: "Makaron Tagliatelle Spawacza",
            price: 16
          },
          {
            meal_type: "Makaron",
            name: "Makaron Tagliatelle Drwala",
            price: 19
          },
          {
            meal_type: "Pizza",
            name: "Pizza Margherita",
            price: 14
          },
          {
            meal_type: "Pizza",
            name: "Pizza Tynkarza",
            price: 16
          },
          {
            meal_type: "Danie główne",
            name: "Grillowany filet z kurczaka",
            price: 10
          },
          {
            meal_type: "Danie główne",
            name: "Camembert z żurawiną i frytkami",
            price: 12
          },
          {
            meal_type: "Danie główne",
            name: "Kotlet schabowy",
            price: 10
          }
        ]
      },
    ]
  factory :restaurant do
    sequence(:name) { |n|
      if (data.length > n)
        data[n][:name]
      else
        "#{n}"
      end}
    phone_number "231 241 241"
    sequence(:shipping_cost) { |n|
      if (data.length > n)
        data[n][:shipping_cost]
      else
        "#{n}"
      end}


    factory :restaurant_with_meals do

      after(:create) do |restaurant, evaluator|
        puts "restauracja"
        rest = data.find {|s| s[:name] == restaurant[:name] }

        [*0..(meal_types.length - 1)].each do |i|
          create(:meal_type, name: meal_types[i])
        end

        type1 = create(:meal_type)
        if !rest.nil?
          meals = rest[:meals]
          [*0..(meals.length - 1)].each do |i|

            type_id = MealType.where(name: meals[i][:meal_type]).first.id
            create(:meal, name: meals[i][:name], price: meals[i][:price],restaurant: restaurant, meal_type_id: type_id)
          end
        else

          create_list(:meal, 10, restaurant: restaurant, meal_type: type1)
        end



        # type2 = create(:meal_type)
        # create_list(:meal, evaluator.meals_count, restaurant: restaurant, meal_type: type2)
      end
    end
  end
end
