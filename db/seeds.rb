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


  Level.create(title: "Basic B",
                       description: "Introduction to PHP 1",
                       level_num:1)
  Challenge.create(title: "Challenge 1",
                              description: "A PHP script starts with <?php and ends with ?>:PHP script that uses a built-in PHP function 'echo' to output the text 'Hello World!'  ' on a web page:",
                              level_id: Level.last.id,
                              question: "use echo to print 'Hello world'",
                               answer: "echo 'Hello World!';")
  Challenge.create(title: "Challege 2",
                               description:"a variable starts with the $ sign, followed by the name of the variable:",
                               level_id: Level.last.id,
                               question:"Declare variable x and assign it a value of porky",
                               answer: "$x='porky'")

  Level.create(title: "Intermedio B",
                        description: "Intro to php 2",
                        level_num:2)
  Challenge.create(
                              title:"Challenge 1",
                              description: "strlen() function returns the length of a string.",
                              level_id:Level.last.id,
                              question:"get the length of 'hello world'",
                              answer:"echo strlen('Hello world!'');"
                              )
    Challenge.create(
                              title:"Challenge 2",
                              description: "PHP str_word_count() function counts the number of words in a string:",
                              level_id:Level.last.id,
                              question:"get the word count of 'hello world'",
                              answer:"echo str_word_count('Hello world!');"
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
                              question:"how do you get the length of array cars",
                              answer:"echo count($cars)"
                              )


