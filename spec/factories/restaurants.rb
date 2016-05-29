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
            price: 17,
            description: "Mięso, roszponka, ser kozi, chutney ze śliwek, szynka szwarzwaldzka, musztarda francuska.",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/63778_375212035986940_2654887367714023395_n.jpg?oh=24c8b0ce1205d58ce4f86a13f78e57a5&oe=57CF7BAF"
          },
          {
            meal_type: "Burger",
            name: "Burger Mixol BBQ",
            price: 15,
            description: "Czeskie salami, jogurt naturalny, roszponka, cebula i mięta",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/12341277_533464120161730_7759765367800810719_n.jpg?oh=7ecc4d702d1ea6572c55df0225fa1296&oe=57DD35EC"
          },
          {
            meal_type: "Burger",
            name: "Burger MajoJajo",
            price: 16,
            description: "Majonez, konfitura rabarbarowa, truskawka, kalarepa, ser dor bleu, rukola",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/11351272_463779407130202_3442343066749064541_n.jpg?oh=ab4eed0668a03da625de23845c8eefb8&oe=57D1CAA8"
          },
          {
            meal_type: "Burger",
            name: "Burger Zkurburg",
            price: 16,
            description: "Szynka serrano, sos z serem pleśniowym, korniszon, grillowane pomidorki koktajlowe, rukola i twardy ser długodojrzewający",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/10311846_570177469823728_245769822250450080_n.jpg?oh=a1f79c3c7f33bd67849cbb42d7947929&oe=57D1A55C"
          },
          {
            meal_type: "Burger",
            name: "Burger Serburg",
            price: 14,
            description: "Mięso, duszona cebula, ser mimolette",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/s851x315/10483858_294755520699259_1145722711274784751_n.jpg?oh=21b7eec2fa1be7a476aa9dfa8b410eb1&oe=57C52B5E"
          },
          {
            meal_type: "Burger",
            name: "Burger Klasyk",
            price: 13,
            description: "Mięso, ser, majonez, pomidor, sałata",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/12540678_549161891925286_8132011383107405808_n.jpg?oh=038fa79307c9ba647070ba3ae60b66d0&oe=57D0A606"
          },
          {
            meal_type: "Burger",
            name: "Burger Baca Wege",
            price: 15,
            description: "Ser camembert, sos wytrawny, pomidor, czarne oliwki i sałata strzępiasta",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/10264777_433910710117072_5173479224768828353_n.jpg?oh=7b1a878cbc75a5207d8278e05c66ace3&oe=57CE277E"
          },
          {
            meal_type: "Burger",
            name: "Burger Cyburg",
            price: 16,
            description: "Duszona czerwona cebulka ze świeżym tymiankiem, ser mimolette, roszponka i nasz supertajny sos chipo",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/11050091_448299002011576_1754559572751367989_n.jpg?oh=c4e1d3e4bba3003378cb18b178532343&oe=57C2172A"
          },
          {
            meal_type: "Burger",
            name: "Burger Rześki",
            price: 15,
            description: "Masło orzechowe naszego wyrobu, karmelizowane śliwki, jarmuż na maśle i sos romesco",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/12039473_512619308912878_6032384679119334303_n.jpg?oh=f1ca3143fd1905daa1a4035c1b3651d9&oe=580FE1D1"
          },
          {
            meal_type: "Burger",
            name: "Burger Wartburger",
            price: 19,
            description: "Mięso, ser, grillowana szynka , cebula, sałata lodowa",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/p480x480/11870830_493632794144863_8938841445693723711_n.jpg?oh=9b36fdd0b115d531120b31a64c022464&oe=57D18F70"
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
            price: 5,
            description: "Tradycyjna japońska zupa, spożywana w Japonii praktycznie codziennie jako dodatek do posiłków",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2669.jpg"
          },
          {
            meal_type: "Pierogi",
            name: "Pierożki Gyoza z owocami morza",
            price: 10,
            description: "Japońskie pierogi z owocami morza, 5 szt",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2684.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa Miso z grillowanym łososiem",
            price: 12,
            description: "Tradycyjna japońska zupa, spożywana w Japonii praktycznie codziennie jako dodatek do posiłków",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2670.jpg"
          },
          {
            meal_type: "Krewetki",
            name: "Krewetki w tempurze z sosem teryaki",
            price: 30,
            description: "Krewetki grillowane w marynacjie, 2 szt",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2679.jpg"
          },
          {
            meal_type: "Sałatka",
            name: "Sałatka z wodorostów wakame",
            price: 9,
            description: "Japońska sałatka z glonów (owoce morza)",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2663.jpg"
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i awokado",
            price: 26,
            description: "Potrawa japońska złożona z gotowanego ryżu zaprawionego octem ryżowym",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2658.jpg"
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i tykwą",
            price: 24,
            description: "Potrawa japońska złożona z gotowanego ryżu zaprawionego octem ryżowym",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2647.jpg"
          },
          {
            meal_type: "Sushi",
            name: "Oshi z surowym łososiem i krewetką",
            price: 26,
            description: "Potrawa japońska złożona z gotowanego ryżu zaprawionego octem ryżowym",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2656.jpg"
          },
          {
            meal_type: "Sushi",
            name: "Oshi z rzodkwią",
            price: 20,
            description: "Potrawa japońska złożona z gotowanego ryżu zaprawionego octem ryżowym",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2651.jpg"
          },
          {
            meal_type: "Sushi",
            name: "Oshi z rzodkwią i sezamem",
            price: 22,
            description: "Potrawa japońska złożona z gotowanego ryżu zaprawionego octem ryżowym",
            image_url: "http://sushi-takai.pl/images/tn_IMG_2651.jpg"
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
            price: 17,
            description: "Kawałki tortilli pokryte roztopionym serem",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/10906311_900588683309061_6807669610635408979_n.jpg?oh=ec65ecabddcceb63db77c8e07a9fac0d&oe=57D809EA"
          },
          {
            meal_type: "Tortilla",
            name: "Tortilla Chilli Con Carne",
            price: 21,
            description: "Tortilla pszenna w mięsem wołowym i sosem chilli (danie ostre)",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-0/s480x480/10996977_926822270685702_8546265675539136800_n.jpg?oh=118794f84cfbbb578b1588232909d17c&oe=57DA34D5"
          },
          {
            meal_type: "Tortilla",
            name: "Zestaw dwóch tortilli",
            price: 17.50,
            description: "Tortilla pszenna z mięsem i warzywami, szt 2",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/s851x315/13119024_1162694790431781_6195499188844337822_n.jpg?oh=05e96345de89a536418d904ee8c084d3&oe=57E58DC3"
          },
          {
            meal_type: "Tortilla",
            name: "Zestaw czterech tortilli",
            price: 29,
            description: "Tortilla pszenna z mięsem i warzywami, szt 4",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/s851x315/13119024_1162694790431781_6195499188844337822_n.jpg?oh=05e96345de89a536418d904ee8c084d3&oe=57E58DC3"
          },
          {
            meal_type: "Taco",
            name: "Tacos",
            price: 18,
            description: "Tortilla kukurydziana, mięso wołowe, cebula, czosnek, przyprawy i pomidory",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/11021268_942102879157641_6555622107221642502_n.jpg?oh=de6c0c9481ab4c78fbc63f2768722fbe&oe=57D7F927"
          },
          {
            meal_type: "Taco",
            name: "Burrito",
            price: 17,
            description: "Tortilla kukurydziana z farszem wołowym w sosie pomidorowym",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/12249719_1059769630724298_7895573139276945305_n.jpg?oh=f8d1c834f435de040d6f9f96d3e06427&oe=57E5763C"
          },
          {
            meal_type: "Taco",
            name: "Queso Nachos",
            price: 4,
            description: "Kawałki tortilli pokryte roztopionym serem",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/10906311_900588683309061_6807669610635408979_n.jpg?oh=ec65ecabddcceb63db77c8e07a9fac0d&oe=57D809EA"
          },
          {
            meal_type: "Taco",
            name: "Quesadilla",
            price: 15.50,
            description: "Tortilla z masy kukurydzianej z roztopionym serem typu Oaxaca",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/s851x315/1936161_1083699884997939_311469602635868485_n.jpg?oh=94d9603128fbcccd56d7ac0deeb4c4ea&oe=57C76C37"
          },
          {
            meal_type: "Taco",
            name: "Don Burrito",
            price: 21.50,
            description: "Zestaw Burrito ze szpinakiem",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/12495242_1119216114779649_8314414061403439191_n.jpg?oh=1e8a991567db3c7a04cf27b44cdb99ac&oe=580F2DB8"
          },
          {
            meal_type: "Taco",
            name: "Nachos Con Guacamole",
            price: 7,
            description: "Nachos w sosie Guacamole",
            image_url: "https://www.facebook.com/MexicoBarWroclaw/photos/a.453803307987603.102217.410152202352714/1087374004630527/?type=3&theater"
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
            price: 21,
            description: "Pieczarki, salami pepperoni",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Philadelphia",
            price: 25,
            description: "Kurczak a'la gyros, cebula, sos jogurtowo-śmietanowy z czosnkiem po upieczeniu",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Boston",
            price: 29,
            description: "Szynka, salami pepperoni, mięso wołowo-wieprzowe, boczek krojony/w plastrach",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Michigan",
            price: 21,
            description: "Salami pepperoni, papryka jalapeno",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Oregon",
            price: 17,
            description: "Ser, oregano",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Alaska",
            price: 21,
            description: "Pieczarki, szynka",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Dakota",
            price: 26,
            description: "Pieczarki, salami pepperoni, pomidor, boczek krojony / w plastrach",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza California",
            price: 27,
            description: "Pieczarki, papryka czerwona, salami pepperoni, kurczak, kukurydza",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Nevada",
            price: 26,
            description: "Pieczarki, salami pepperoni, szynka, cebula",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Indiana",
            price: 21,
            description: "Kukurydza, salami pepperoni",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/151010_111678242235853_1895933_n.jpg?oh=951b3f0a880deb7362bd1bd1f4e175bf&oe=57D29738"
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
            price: 19,
            description: "Szynka, pieczarki, salami (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capri",
            price: 17,
            description: "Szynka, pieczarki (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Vegetariana",
            price: 24,
            description: "Pieczarki, papryka, cebula, oliwki, kukurydza, ogórek, pomidor (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capri",
            price: 19,
            description: "Szynka, pieczarki (30cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Hawaii",
            price: 17,
            description: "Szynka, ananas (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Rafaello",
            price: 24,
            description: "Szpinak, pieczarki, kiełbasa peperoni, ser feta, pomidor, oliwki (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Pepperoni",
            price: 21,
            description: "Sałata, papryka, pepperoni (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Capricioza",
            price: 21,
            description: "Szynka, pieczarki, salami, papryka peperoni, chili (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Margerita",
            price: 12,
            description: "Ser, sos pomidorowy (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Napoli",
            price: 13,
            description: "Pieczarki (20cm)",
            image_url: "https://image.yourdelivery.de/pyszne.pl/service/1404/Pizzeria+Italia-155-100.jpg"
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
            price: 10,
            description: "Z makaronem ryżowym, warzywami al dente i połową jajka - danie bezglutenowe ",
            image_url: "http://kochamzupy.pl/wp-content/uploads/2014/12/ramen.jpg"
          },
          {
            meal_type: "Burger",
            name: "Burger Królewski",
            price: 25,
            description: "Wołowina 100%, cheddar i boczek, suszone pomidory, pesto rukolowo - bazyliowe naszej produkcji, pomidor, sałata, czerwona cebula",
            image_url: "http://wyszlo.com/wp-content/uploads/2014/12/burger-king.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa dnia",
            price: 9,
            description: "Zmienna oferta, stała cena :D",
            image_url: "http://najadacze.pl/wp-content/uploads/2013/12/zupa-dnia.jpg"
          },
          {
            meal_type: "Ciasto",
            name: "Banoffee",
            price: 10.50,
            description: "Ciasto z bananem i toffee na podkładzie z herbatników razowych",
            image_url: "https://s3-eu-west-1.amazonaws.com/s3.mediafileserver.co.uk/carnation/WebFiles/RecipeImages/classicbanoffeepie_lg.jpg"
          },
          {
            meal_type: "Kanapka",
            name: "Kanapka Jim Beam",
            price: 10,
            description: "Kurczak, boczek, ser żółty, sos bbq",
            image_url: "http://zjedz-mnie.pl/blog/wp-content/uploads/2012/08/DSC_0325-2.jpg"
          },
          {
            meal_type: "Burger",
            name: "Cheese Burger",
            price: 19,
            description: "Wołowina, cheddar, pomidor, sałata, czerwona cebula, ogórek",
            image_url: "https://upload.wikimedia.org/wikipedia/commons/4/43/Burger_King_Quad_Stacker_cheeseburger.jpg"
          },
          {
            meal_type: "Burger",
            name: "Bekon Burger",
            price: 20,
            description: "Wołowina, boczek, pomidor, sałata, czerwona cebula, ogórek",
            image_url: "http://www.winotes.pl/wp-content/uploads/2014/06/Burger-2.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa Jarzynowa",
            price: 10,
            description: "Zupa jarzynowa z kalafiorem",
            image_url: "http://pobitegary.com/wp-content/uploads/2011/06/Zupa-jarzynowa_600.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa Ogórkowa",
            price: 8,
            description: "Zupa ogórkowa na zakwasie",
            image_url: "http://bi.gazeta.pl/im/2/5810/z5810502X,Zupa-ogorkowa.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa Owocowa",
            price: 7,
            description: "Zupa z kawałkami owoców",
            image_url: "http://www.gotowaniezestylem.pl/image/recipe/zupa-owocowa-192-1.jpg"
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
            price: 21,
            description: "Sos barbeque, ser, kurczak, boczek, cebula",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Progressive",
            price: 23,
            description: "Sos pomidorowy, ser, szynka, salami, oliwki, papryka pepperoni",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Minimal",
            price: 16,
            description: "Sos pomidorowy, ser, bazylia",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Salsa",
            price: 19,
            description: "Sos pomidorowy, ser, salami, pieczarki",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Pop",
            price: 18,
            description: "Sos pomidorowy, ser, szynka",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Classic",
            price: 19,
            description: "Sos pomidorowy, ser, szynka, pieczarki",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Soul",
            price: 21,
            description: "Sos pomidorowy, ser, szynka, kukurydza, pieczarki, papryka",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Chillout",
            price: 17,
            description: "Sos pomidorowy, ser, pieczarki",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Jazz",
            price: 19,
            description: "Sos pomidorowy, ser, szpinak, jajko, czosnek",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Blues",
            price: 19,
            description: "Sos pomidorowy, ser, tuńczyk, cebula",
            image_url: "https://img.respoti.com/uploads/300/5558e0186a7a8_8_thumb.jpg"
          }
        ]
      },
      {
        name: "Kebab King",
        shipping_cost: 3.0,
        meals: [
          {
            meal_type: "Kebab",
            name: "Kebab zapiekanka",
            price: 18,
            description: "Grillowane mięso, żółty ser, oliwki, surówka, sos",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/3ebd6ff639.jpg"
          },
          {
            meal_type: "Kebab",
            name: "Iskender Kebab",
            price: 26,
            description: "Pieczone mięso z wołowiny i cielęciny z grillowanym chlebem, sos pomidorowy",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/a3d94748d0.jpg"
          },
          {
            meal_type: "Kebab",
            name: "Talerz kebab mieszany",
            price: 21,
            description: "Grillowane mięso z kurczaka wołowiny i cielęciny, surówka, sos",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/5e151e9a2f.jpg"
          },
          {
            meal_type: "Napój",
            name: "Ayran",
            price: 5,
            description: "Tradycyjny jogurt turecki",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/318820eadb.jpg"
          },
          {
            meal_type: "Napój",
            name: "Coca-cola zero 0,3 l",
            price: 5,
            description: "Napój w butelce",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/07abc32ddb.jpg"
          },
          {
            meal_type: "Napój",
            name: "Sprite 0,3 l",
            price: 5,
            description: "Napój w butelce",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/57309906f9.jpg"
          },
          {
            meal_type: "Kebab",
            name: "Lawasz",
            price: 12,
            description: "Pieczone mięso z kurczaka i wołowiny, bardzo cienki chleb, surówka, sos",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/5460424136.jpg"
          },
          {
            meal_type: "Makaron",
            name: "Makaron",
            price: 8,
            description: "270g",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/765ccf10ff.jpg"
          },
          {
            meal_type: "Zupa",
            name: "Zupa z soczewicy",
            price: 10,
            description: "Pieczywo, cytryna, 300g",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/fe9819205c.jpg"
          },
          {
            meal_type: "Kebab",
            name: "Kebab rolada mieszany",
            price: 12,
            description: "Pieczone mięso z kurczaka i wołowiny, cienki chleb, surówka, sos",
            image_url: "http://www.kebabking.com.pl/uploads/0/0rip80/c974699b48.jpg"
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
            price: 15,
            description: "Długopieczona wieprzowina, ostre korniszony, sos musztardowo-chrzanowy, świeże warzywa",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/12108097_566712103491681_7245864157639500023_n.jpg?oh=456c95b506e84274d41f094ecdba077f&oe=57C93FDA"
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Bejrut",
            price: 13,
            description: "Domowy humus, kiszony burak ,świeże warzywa, bułka własnego wypieku",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/12523869_566711686825056_7530443176115998846_n.jpg?oh=cd947dd524ee5f9b9462a1c357965fe5&oe=57C51326"
          },
          {
            meal_type: "Kanapka",
            name: "Sandwich Ocean",
            price: 14,
            description: "Cebula, pietruszka, ser gouda, kurczak, sałata",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/11025653_422188867944006_1732841738406147675_n.jpg?oh=773fb6c8b681e1030c2bb557ba86c8a7&oe=57C89F2E"
          },
          {
            meal_type: "Napój",
            name: "Coca-cola 0,3 l",
            price: 4.50,
            description: "Napój w butelce plastikowej",
            image_url: "http://www.coca-cola.pl/content/dam/GO/coca-cola/mexico/logos_cocacola/logo-footer.png"
          },
          {
            meal_type: "Napój",
            name: "Coca-cola zero 0,3 l",
            price: 4.50,
            description: "Napój w butelce plastikowej",
            image_url: "http://www.coca-cola.pl/content/dam/GO/coca-cola/mexico/logos_cocacola/logo-footer.png"
          },
          {
            meal_type: "Napój",
            name: "Sprite 0,3 l",
            price: 4.50,
            description: "Napój w butelce plastikowej",
            image_url: "http://vignette3.wikia.nocookie.net/logopedia/images/7/72/Sprite_logo3.gif/revision/latest?cb=20150801165145"
          },
          {
            meal_type: "Burger",
            name: "We Will Rock You",
            price: 17,
            description: "Ser gorgonzola pasta z gotowanej wołowiny i warzyw, seler naciowy, cebulka szalotka, pomidorki koktajlowe, sałata, musztarda i majonez",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/12243248_521209414708617_5902775903571697994_n.jpg?oh=f0f402a6d70ee2b567422f2d7dc15bbd&oe=57D78C4D"
          },
          {
            meal_type: "Burger",
            name: "My Generation",
            price: 19,
            description: "Grillowana Pieczarka marynowana w whisky, syropie z agawy, sosie sojowym i chilli",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/11119432_453719528124273_944598310598735645_n.jpg?oh=60d0ca902bdda17028c2438ddf2f97ad&oe=57C4515E"
          },
          {
            meal_type: "Burger",
            name: "Born To Be Wild",
            price: 19,
            description: "Wołowina. pikantna owocowa salsa z miętą, gorgonzola, czerwona cebula, sałata lodowa, majo",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/11207312_476401162522776_4017170765518219532_n.jpg?oh=9c382cc4d72c411e97ff67c569546811&oe=57D3D789"
          },
          {
            meal_type: "Burger",
            name: "Highway To Hell",
            price: 20,
            description: "wołowina, krążki cebulowe, boczek, gouda, pomidor, korniszon, sałata, majonez,BBQ ",
            image_url: "https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/10256818_427044257458467_3876528659506540888_n.jpg?oh=a183e5c68f16a730919c3bb6fd1c7cc3&oe=57C1A2CF"
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
            price: 18,
            description: "Sałatka warzywna, 200g",
            image_url: "http://kuchnianaplazy.blox.pl/resource/salatkazlososiem2.jpg"
          },
          {
            meal_type: "Sałatka",
            name: "Sałatka z Grillowanym Łososiem",
            price: 22,
            description: "Sałatka warzywna, 200g",
            image_url: "https://www.winiary.pl/image.ashx/salatka-warzywna-z-kurczakiem.jpg?fileID=173888"
          },
          {
            meal_type: "Sos",
            name: "Sos pieczarkowy",
            price: 4,
            description: "200g",
            image_url: "http://2.bp.blogspot.com/-GJe-ukkXQN4/UFZA_XR9BeI/AAAAAAAAByE/GiVgiBEZAZ0/s1600/DSC04851.JPG"
          },
          {
            meal_type: "Makaron",
            name: "Makaron Tagliatelle Spawacza",
            price: 16,
            description: "Makaron, ser mozarella, sos pomidorowy, pietruszka",
            image_url: "https://s3-eu-west-1.amazonaws.com/www.przepisy.pl/przepisy3ii/img/variants/535x0/tagliatelle-z-tunczykiem.jpg"
          },
          {
            meal_type: "Makaron",
            name: "Makaron Tagliatelle Drwala",
            price: 19,
            description: "Makaron, Sos śmietanowy, pieczarki",
            image_url: "https://www.winiary.pl/image.ashx/tagliatelle-z-sosem-serowo-pieczarkowym.jpg?fileID=73433"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Margherita",
            price: 14,
            description: "Ser, sos pomidorowy",
            image_url: "http://przepisymag.pl/wp-content/uploads/2014/12/pizza.jpg"
          },
          {
            meal_type: "Pizza",
            name: "Pizza Tynkarza",
            price: 16,
            description: "Ser, sos pesto",
            image_url: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2014/9/1/0/FNK_Whole-Wheat-Pizza-with-Arugula-Pesto_s4x3.jpg"
          },
          {
            meal_type: "Danie główne",
            name: "Grillowany filet z kurczaka",
            price: 10,
            description: "Kurczak, sałata, frytki/ziemniaki",
            image_url: "http://kuchnialidla.pl/img/img/PosterLarge/960f39d179-poledwiczki_z_piersi_kurczaka_GRILL_12522_S_108991_RGB_960x540.png"
          },
          {
            meal_type: "Danie główne",
            name: "Camembert z żurawiną i frytkami",
            price: 12,
            description: "Danie w sosie pieczarkowym",
            image_url: "https://fabulouslittlenibbles.com/wp-content/uploads/2012/12/IMG_4610-1024x6821.jpg"
          },
          {
            meal_type: "Danie główne",
            name: "Kotlet schabowy",
            price: 10,
            description: "Kotlet, ziemniaki, surówka",
            image_url: "https://upload.wikimedia.org/wikipedia/commons/6/6c/0003_kotlet_schabowy_2013,_photo_by_Silar.JPG"
          }
        ]
      }
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
            create(:meal, name: meals[i][:name], description: meals[i][:description], image_url: meals[i][:image_url], price: meals[i][:price],restaurant: restaurant, meal_type_id: type_id)
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
