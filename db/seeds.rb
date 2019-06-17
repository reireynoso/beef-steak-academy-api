# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Assignment.destroy_all
Course.destroy_all

course1 = Course.create(title:"Mod1 Intro To Flatiron",subject:"Ruby", description:"Take your knowledge of ruby to the next level and learn key concepts of database managment.", img_url:"https://seeklogo.net/wp-content/uploads/2016/07/ruby-vector-logo.png")

course2 = Course.create(title:"Mod2 Intro To Fullstack Dev",subject:"Ruby on Rails", description:"Build your way up to your first fullstack dev projects with Ruby on Rails and Restful Routing.", img_url:"https://avatars.githubusercontent.com/u/4223")

course3 = Course.create(title:"Mod3 Javascript and Manipulating The Dom",subject:"Javascript", description:"Let's Take you on a Journey of Vanilla Javascript and How it manipulates the dom.", img_url:"https://cdn.pixabay.com/photo/2015/04/23/17/41/javascript-736401_960_720.png")

course4 = Course.create(title:"Mod4 Learning Your Second Framework React!",subject:"React", description:"Learn one of the world's hottest frameworks React.", img_url:"https://miro.medium.com/max/480/1*To2H39eauxaeYxYMtV1afQ.png")

# t.string "title"
# t.string "description"
# t.string "content"
# t.string "video_url"
# t.integer "course_id"

assignment1 = Assignment.create(title:"Hashes and the Internet", description:"How Hashes Run the Internet", content:"", video_url:"XwUeicw7Osk", course_id:course1.id)

assignment2 = Assignment.create(title:"Intro To Object-Oriented Programming", description:"Learn Ruby and OOP", content:"", video_url:"FeTIaXh48EM", course_id:course1.id)

assignment3 = Assignment.create(title:"Object Relationships: One to Many", description:"Learn Table Relationships: 1 to Many", content:"", video_url:"Lssf6NbDLeg", course_id:course1.id)

assignment4 = Assignment.create(title:"Object Relationships — Many to Many", description:"Learn Table Relationships: Many to Many", content:"", video_url:"zrrLJ7gQbas", course_id:course1.id)

assignment5 = Assignment.create(title:"Intro to ActiveRecord", description:"Database Management with Active Record!", content:"", video_url:"bcbNbD6UxOU", course_id:course1.id)

#########################
#Course 2 Assingments
#########################
assignment6 = Assignment.create(title:"Intro to Rails", description:"Hop on board the Rails Train!", content:"", video_url:"q3e1b-ljQEU", course_id:course2.id)

assignment7 = Assignment.create(title:"Rails Forms", description:"Manipulating Data In Rails Forms", content:"", video_url:"HscPKVxXqXE", course_id:course2.id)

assignment8 = Assignment.create(title:"Rails Validations", description:"Validating Data Being Sent To Your Backend.", content:"", video_url:"p1v6SojRoLs", course_id:course2.id)

assignment9 = Assignment.create(title:"Sessions, Cookies, & Flash", description:"Learn to create Sessions and manipulate Cookies!", content:"", video_url:"GP5ADEMmLgo", course_id:course2.id)

assignment10 = Assignment.create(title:"Authorization", description:"Authorization From Front-end To backend.", content:"", video_url:"7daeWvBjX-U", course_id:course2.id)

#########################
#Course 3 Assingments
#########################

assignment11 = Assignment.create(title:"Intro to the DOM", description:"Manipulating the DOM with vanilla JS..", content:"", video_url:"_lj8XnywBCo", course_id:course3.id)

assignment12 = Assignment.create(title:"Intro to Events", description:"Learn How Events Happen on the DOM", content:"", video_url:"kmkJknJGI-0", course_id:course3.id)

assignment13 = Assignment.create(title:"DOM CRUD", description:"0-100 With DOM full CRUD", content:"", video_url:"XZfa4ASX0mg", course_id:course3.id)

assignment14 = Assignment.create(title:"Fetch CR(UD)", description:"Learn how to make Fetch happen with Update and Delete.", content:"", video_url:"77c7o4eKR8o", course_id:course3.id)

assignment15 = Assignment.create(title:"Group Review", description:"Review Vanilla JS full CRUD DOM Manipulation.", content:"", video_url:"S_sD_BjkAXw", course_id:course3.id)

#########################
#Course 4 Assingments
#########################

assignment16 = Assignment.create(title:"Intro to React", description:"Lets Learn Your First JS Framework", content:"", video_url:"hv0Cj9Q8Blc", course_id:course4.id)

assignment17 = Assignment.create(title:"State and Events", description:"Learn How Events Happen in React", content:"", video_url:"c36jYDa9QlM", course_id:course4.id)

assignment18 = Assignment.create(title:"State and Forms", description:"Learn how State affects how you handle forms.", content:"", video_url:"mdnQx0EIaJ0", course_id:course4.id)

assignment19 = Assignment.create(title:"Component Lifecycle", description:"How The Component Lifecycle affects your data flow.", content:"", video_url:"Jgcc4rN7RPY", course_id:course4.id)

assignment40 = Assignment.create(title:"Sushi Saga Review", description:"Review React based on the practice code challenge.", content:"", video_url:"ScNQ95srobU", course_id:course4.id)

puts "Done"
