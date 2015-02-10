# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


   Teacher.create(name:"Susan Smith", email:"SusanSmith@higher.edu", password:"SusanSmith")
   Teacher.create(name:"Tom Teacher", email:"TomTeacher@higher.edu", password:"TomTeacher")
   Teacher.create(name:"Bob Builder", email:"BobBuilder@higher.edu", password:"BobBuilder")


   Student.create(name:"sara", student_email:"sara@sara.com", password:"sara", teacher_id: 1)
   Student.create(name:"emily", student_email:"emily@emily.com", password:"emily", teacher_id: 1)
   Student.create(name:"john", student_email:"john@john.com", password:"john", teacher_id: 2)
   Student.create(name:"james", student_email:"james@james.com", password:"james", teacher_id: 2)
   Student.create(name:"mark", student_email:"mark@mark.com", password:"mark", teacher_id: 3)
   Student.create(name:"stacy", student_email:"stacy@stacy.com", password:"stacy", teacher_id: 3)

   Parent.create(name:"dad", email: "dad@dad.com", password: "dad", child_name: "sara")
   Parent.create(name:"mom", email: "mom@mom.com", password: "mom", child_name: "emily")
   Parent.create(name:"herschel", email: "herschel@herschel.com", password: "herschel", child_name: "john")
   Parent.create(name:"micah", email: "micah@micah.com", password: "micah", child_name: "james")
   Parent.create(name:"Sandy", email: "Sandy@Sandy.com", password: "Sandy", child_name: "mark")
   Parent.create(name:"Joey", email: "Joey@Joey.com", password: "Joey", child_name: "stacy")

   Achievement.create(name:"Homework 1", date: "2015-2-7", point_value: 200  )
   Achievement.create(name:"Homework 2", date: "2015-2-7", point_value: 500  )
   Achievement.create(name:"Homework 3", date: "2015-2-7", point_value: 400  )
   Achievement.create(name:"Homework 4", date: "2015-2-7", point_value: 200  )
