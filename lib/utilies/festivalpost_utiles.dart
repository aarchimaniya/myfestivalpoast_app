//Map

import 'package:myfestivalpoast_app/modals/festivalpost_appmodals.dart';

List<Map<String, dynamic>> allFestivalData = [
  {
    "category": "Diwali",
    "slogan":
        "May the light of Diwali illuminate your home and heart with happiness and prosperity",
    "post_frame": "assets/images/category/diwali.jpeg",
    "date": "1 Novemeber",
  },
  {
    "category": "Holi",
    "slogan":
        "FMay the colors of Holi brighten your day with unity, peace, and happiness",
    "post_frame": "assets/images/category/holi.jpeg",
    "date": "25 March ",
  },
  {
    "category": "Navratri",
    "slogan":
        "May Maa Durga is always there to guide us through the difficult times of our lives",
    "post_frame": "assets/images/category/navratri.jpeg",
    "date": "9 April",
  },
  {
    "category": "Ganesh Chaturthi",
    "slogan":
        "May the lord Vigna Vighna Vinayaka remove all obstacles and shower you with bounties",
    "post_frame": "assets/images/category/ganeshchaturthi.jpeg",
    "date": "7 September",
  },
  {
    "category": "Onam",
    "slogan":
        "May the spirit of King Mahabali bless you with abundance and prosperity.",
    "post_frame": "assets/images/category/onam.jpeg",
    "date": "15 September",
  },
  {
    "category": "Janmashtami",
    "slogan":
        " May Lord Krishna shower his blessings on you, and may every Janmashtami bring lots of happiness for you and your family",
    "post_frame": "assets/images/category/janmashtami.jpeg",
    "date": "26 August",
  },
  {
    "category": "Raksha Bandhan",
    "slogan":
        " I wish that this Raksha Bandhan brings you everything you desire in life",
    "post_frame": "assets/images/category/rakshabhans.jpeg",
    "date": "19 August",
  },
  {
    "category": "Pongal",
    "post_frame": "assets/images/category/pongal.jpeg",
    "slogan":
        "May the joy of pongal fills your heart with joy, and your life with endless miracles",
    "date": "15-18 January",
  },
  {
    "category": "Uttrayan",
    "post_frame": "assets/images/category/uttrayan1.jpeg",
    "slogan":
        " Wishing you a joyful year filled with surprises and happy moments",
    "date": "14 January",
  },
  {
    "category": "Maha Shivratri",
    "post_frame": "assets/images/category/mahashivratri.jpeg",
    "slogan":
        "On this auspicious day, may Lord Shiva shower you with his divine grace ",
    "date": "8 March",
  },
  {
    "category": "Christmas",
    "post_frame": "assets/images/category/christmas.jpeg",
    "slogan":
        "May the joy of giving be your true gift this Christmas, and may the love you share come back to you ",
    "date": "25 December",
  },
  {
    "category": "Lohri",
    "post_frame": "assets/images/category/lohri.jpeg",
    "slogan":
        "As the fire of Lohri burns bright, may it light up your life with love and positivity. Happy celebrations! ",
    "date": "Sun-14 January",
  },
  {
    "category": "Maha Shivratri",
    "post_frame": "assets/images/category/mahashivratri.jpeg",
    "slogan":
        "On this auspicious day, may Lord Shiva shower you with his divine grace ",
    "date": "8 March",
  },
  {
    "category": "Rio Carnival Festival ",
    "post_frame": "assets/images/category/riocarnival.jpeg",
    "slogan":
        "Carnival is a time to eat drink and be merry before the rigorous fasting and sacrifice during Lent ",
    "date": "9-17 Febuary",
  }
];
List<Map<String, dynamic>> myCategory = [
  {
    'image': "assets/images/category/diwali.jpeg",
    'category': 'Diwali',
  },
  {
    'image': "assets/images/category/navratrri.jpeg",
    'category': 'Navratri',
  },
  {
    'image': "assets/images/category/holii.jpegss",
    'category': 'Holi',
  },
  {
    'image': "assets/images/category/ganeshchatuthi.jpeg",
    'category': 'Ganeshchaturthi',
  },
  {
    'image': "assets/images/category/janmashtami.jpeg",
    'category': 'Janmashtami',
  },
  {
    'image': "assets/images/category/rakshabandhan.jpeg",
    'category': 'Raksha Bandhan',
  },
  {
    'image': "assets/images/category/mahashivratri.jpeg",
    'category': 'Mahashivratri',
  },
  {
    'image': "assets/images/category/christmas.jpeg",
    'category': 'Christmas',
  },
  {
    'image': "assets/images/category/lohri.jpeg",
    'category': 'Lohri',
  },
  {
    'image': "assets/images/category/onam.jpeg",
    'category': 'Onam',
  },
  {
    'image': "assets/images/category/pongal.jpeg",
    'category': 'Pongal',
  },
  {
    'image': "assets/images/category/uttrayan.jpeg",
    'category': 'Uttrayan',
  },
  {
    'image': "assets/images/category/riocarnvial.jpeg",
    'category': 'Rio Carnival Festival',
  },
];
//Modals  =  Objects
List<Festival> allFestival = allFestivalData
    .map(
      (e) => Festival.fromMap(data: e),
    )
    .toList();

List<Map<String, dynamic>> allFestivalsData = [
  {
    "category": "Diwali",
    "slogan": "Festival of Lights",
    "post_frame": "assets/images/category/diwali.jpeg",
    "date": "1 Novemeber",
  },
  {
    "category": "Holi",
    "slogan": "Festival of Colors",
    "post_frame": "assets/images/category/holi.jpeg",
    "date": "25 March ",
  },
  {
    "category": "Navratri",
    "slogan": "Nine Nights of Dance",
    "post_frame": "assets/images/category/navratri.jpeg",
    "date": "9 April",
  },
  {
    "category": "Ganesh Chaturthi",
    "slogan": "Have Memorable Time With Family and Friends",
    "post_frame": "assets/images/category/ganeshchaturthi.jpeg",
    "date": "7 September",
  },
  {
    "category": "Onam",
    "slogan":
        "May the spirit of King Mahabali bless you with abundance and prosperity.",
    "post_frame": "assets/images/category/onam.jpeg",
    "date": "15 September",
  },
  {
    "category": "Janmashtami",
    "slogan": " On the joyous occasion of Janmashtami",
    "post_frame": "assets/images/category/janmashtami.jpeg",
    "date": "26 August",
  },
  {
    "category": "Raksha Bandhan",
    "slogan":
        " I wish that this Raksha Bandhan brings you everything you desire in life",
    "post_frame": "assets/images/category/rakshabandhan.jpeg",
    "date": "19 August",
  },
  {
    "category": "Pongal",
    "post_frame": "assets/images/category/pongal.jpeg",
    "slogan":
        "May the joy of pongal fills your heart with joy, and your life with endless miracles",
    "date": "15-18 January",
  },
  {
    "category": "Uttrayan",
    "post_frame": "assets/images/category/uttrayan.jpeg",
    "slogan": "Kite, sky, happiness",
    "date": "14 January",
  },
  {
    "category": "Maha Shivratri",
    "post_frame": "assets/images/category/mahashivratri.jpeg",
    "slogan":
        "On this auspicious day, may Lord Shiva shower you with his divine grace ",
    "date": "8 March",
  },
  {
    "category": "Rio Carnival Festival ",
    "post_frame": "assets/images/category/riocarnival.jpeg",
    "slogan": "Life is a carnival, ride it out ",
    "date": "9-17 Febuary",
  }
];

List<Map<String, dynamic>> myCategoryies = [
  {
    'image': "assets/images/category/diwali.jpeg",
    'category': 'Diwali',
  },
  {
    'image': "assets/images/category/navratrri.jpeg",
    'category': 'Navratri',
  },
  {
    'image': "assets/images/category/holi.jpeg",
    'category': 'Holi',
  },
  {
    'image': "assets/images/category/ganeshchatuthi.jpeg",
    'category': 'Ganeshchaturthi',
  },
  {
    'image': "assets/images/category/janmashtami.jpeg",
    'category': 'Janmashtami',
  },
  {
    'image': "assets/images/category/rakshabandhan.jpeg",
    'category': 'Raksha Bandhan',
  },
  {
    'image': "assets/images/category/mahashivratri.jpeg",
    'category': 'Mahashivratri',
  },
  {
    'image': "assets/images/category/onam.jpeg",
    'category': 'Onam',
  },
  {
    'image': "assets/images/category/pongal.jpeg",
    'category': 'Pongal',
  },
  {
    'image': "assets/images/category/uttrayan.jpeg",
    'category': 'Uttrayan',
  },
  {
    'image': "assets/images/category/riocarnvial.jpeg",
    'category': 'Rio Carnival Festival',
  },
];

//Modals  =  Objects
List<Festivals> allFestivals = allFestivalsData
    .map(
      (e) => Festivals.fromMap(data: e),
    )
    .toList();
