# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 Grade.create(student_email: "jr@jr.com", assignment_name: "homework 1", due_on: "2015-01-02", score: 95)
 Grade.create(student_email: "timmy@timmy.com", assignment_name: "homework 1", due_on: "2015-01-02", score: 85)
 Grade.create(student_email: "john@john.com", assignment_name: "homework 1", due_on: "2015-01-02", score: 60)
 Grade.create(student_email: "john@john.com", assignment_name: "homework 1", due_on: "2015-01-02", score: 96)
 Grade.create(student_email: "sara@sara.com", assignment_name: "homework 1", due_on: "2015-01-02", score: 96)

 Parent.create(name:"dad", email: "dad@dad.com", password: "dad", child_name: "jr")
 Parent.create(name:"mom", email: "mom@mom.com", password: "mom", child_name: "john")

 Student.create(name:"john", student_email:"john@john.com", password:"john", teacher_id: 2)
 Student.create(name:"sara", student_email:"sara@sara.com", password:"sara", teacher_id: 1)
