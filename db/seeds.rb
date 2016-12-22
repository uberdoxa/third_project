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
