require './scraper'
require './student'

scraper_2 = Scraper.new("http://flatironschool-bk.herokuapp.com")

student_names = scraper_2.get_students_names

student_blogs = scraper_2.get_students_blogs

student_twitters = scraper_2.get_students_twitter

students = []
28.times do |i| 
	students << Students.new(student_names[i], student_twitters[i], student_blogs[i]) #using example from Nisha's code
end
 #name equals element from student_names array

students.each do |student|
        puts student.name
        puts student.twitter
        puts student.blog_name
end