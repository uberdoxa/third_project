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


  Level.create(title: "Level 1: PHP Basics",
                       description: "Getting started! Every hero has to start somewhere. Let's learn how to say 'Hello World' and declare variables.",
                       level_num:1)
  Challenge.create(title: "Challenge 1: Hello World!",
                              description: "A PHP script starts with <?php and ends with ?> To print words, PHP uses a built-in function 'echo' to output the text. For example, <?php echo 'Hello World';?> Would print 'Hello World!'  ' on a web page",
                              level_id: Level.last.id,
                              question: "Use echo to print 'HELLO WORLD'",
                               answer: "<?php echo 'Hello World';?>")
  Challenge.create(title: "Challege 2: Declare a variable",
                               description:"With your new super powers you can create new words! To declare a variable start with the $ sign, followed by the name of the variable. For example, if you wanted to declare variable 'friendly neighborhood' to value 'spiderman', you would write "$friendlyneighborhood='spiderman';" ",
                               level_id: Level.last.id,
                               question:"Some superheroes keep their identity a secret! Declare variable 'identity' and assign it a value of 'secret'",
                               answer: "$identity='secret';")

  Level.create(title: "Intermedio B",
                        description: "Intro to php 2",
                        level_num:2)
  Challenge.create(
                              title:"Challenge 1",
                              description: "strlen() function returns the length of a string.",
                              level_id:Level.last.id,
                              question:"echo the length of 'hello world'",
                              answer:"echo strlen('hello world');"
                              )
    Challenge.create(
                              title:"Challenge 2",
                              description: "PHP str_word_count() function counts the number of words in a string:",
                              level_id:Level.last.id,
                              question:"echo the word count of 'hello world'",
                              answer:"echo str_word_count('hello world!');"
                              )

Level.create(title: "Advanced B",
                        description: "Intro to php 3",
                        level_num:3)
 Challenge.create(
                              title:"Challenge 1",
                              description: "In PHP, the array() function is used to create an array:",
                              level_id:Level.last.id,
                              question:"create an array cars with 'bmw' and 'toyota' as its content",
                              answer:"$cars = array('bmw', 'toyota');"
                              )
   Challenge.create(
                              title:"Challenge 2",
                              description: "The count() function is used to return the length (the number of elements) of an array:",
                              level_id:Level.last.id,
                              question:"how do you echo the length of array cars",
                              answer:"echo count($cars);"
                              )


