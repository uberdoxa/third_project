# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Challenge.destroy_all
Level.destroy_all
text=[];
text[0]="PHP is a powerful tool for making dynamic and interactive Web pages. PHP stands for PHP: Hypertext Preprocessor
 it's is a server-side scripting language</h5>
 <br>
 <h6>Ok you have had your history lesson, time to write you first php program. We here from PHPcodeHero will
  honor the coders tradiotion. Your first program will print hello world!
  in the box below enter the <code>echo\"Hellow World!\";"
text[1]="Lets talk about variables. Variables are a very powerful and usefull tool. Think of variables as containers.
You have different containers to hold different types of everyday objects. Same thing applies to variables.

<<<<<<< HEAD
These different containers are called data types. in PHP there is STRING NUMBER ARRAY</h5>
 <br>
 In php variables must be declared with a ($) preceding it. Example ($a). The character directly folowing the $ sign
 must not be a number. The variable name $5 would not be valid but $a5 would be."
text[3]="Having the ability to make choices is an important thing. in php programming
this is achieved with an if else statement"
3.times do |i|
  Level.create(title: "Level "+(i+1).to_s, description: "Description for Level "+(i+1).to_s)
  Challenge.create(title: "Challenge 1", description: "Spicy jalapeno tenderloin jowl minim picanha rump consequat, shoulder pariatur cupidatat doner cillum hamburger.", level_id: Level.last.id, question: "What is a pork in PHP?", answer: "$x = 'pork';")
end
=======

  Level.create(title: "Level 1: PHP Basics",
                       description: "Getting started! Every hero has to start somewhere. Let's learn how to say 'Hello World' and declare variables.",
                       level_num:1)
  Challenge.create(title: "Challenge 1: Hello World!",
                              description: "A PHP script starts with <?php and ends with ?> To print words, PHP uses a built-in function 'echo' to output the text. For example, <?php echo 'Hello World';?> Would print 'Hello World!' on a web page...",
                              level_id: Level.last.id,
                              question: "Use echo to print 'Hello World'",
                               answer: "<?php echo 'Hello World';?>")
  Challenge.create(title: "Challege 2: Declare a variable",
                               description:"With your new super powers you can create new words! To declare a variable start with the $ sign, followed by the name of the variable. For example, if you wanted to declare variable 'friendly neighborhood' to value 'spiderman', you would write '$friendlyneighborhood='spiderman';'",
                               level_id: Level.last.id,
                               question:"Some superheroes keep their identity a secret! Declare variable 'identity' and assign it a value of 'secret'",
                               answer: "$identity='secret';")

  Level.create(title: "Level 2: Functions!",
                        description: "PHP comes with easy to access superpowers called 'functions' let's learn more about them.",
                        level_num:2)
  Challenge.create(
                              title:"Challenge 1: Find the length of a string",
                              description: "The function 'strlen()' returns the length of a string. By passing a string into the () of strlen, you can find out how long that string is. For example, 'echo strlen('saves the day')' will print the number '13' the length of that string.",
                              level_id:Level.last.id,
                              question:"Print the length of 'its a bird, its a plane' by combining echo and the strlen function",
                              answer:"echo strlen('its a bird, its a plane');"
                              )
    Challenge.create(
                              title:"Challenge 2: Count words",
                              description: "PHP str_word_count() function counts the number of words in a string. In PHP str_word_count('The Incredible Hulk'); would return 3, for 3 words.",
                              level_id:Level.last.id,
                              question:"Count the number of words in 'Norman Osborn is the Green Goblin'",
                              answer:"echo str_word_count('Norman Osborn is the Green Goblin');"
                              )

Level.create(title: "Level 3: Arrays...",
                        description: "Learn about arrays in PHP and how to combine what we've learned about functions with this new data type.",
                        level_num:3)
 Challenge.create(
                              title:"Challenge 1: Array Function",
                              description: "In PHP, the array() function is used to create an array. To create array 'avengers' with an array of those heroes, you would code, '$avengers = array('Hulk, Iron Man, Thor');",
                              level_id:Level.last.id,
                              question:"create an array heroes with 'wolverine' and 'storm' as its content",
                              answer:"$heroes = array('wolverine', 'storm');"
                              )
   Challenge.create(
                              title:"Challenge 2: Count elements in an array",
                              description: "The count() function is used to return the length of the number of elements of an array:",
                              level_id:Level.last.id,
                              question:"How do you echo the length of the array heroes?",
                              answer:"echo count($heroes);"
                              )


>>>>>>> ba571b4ccbab283292ef273881c069b883e3898f
