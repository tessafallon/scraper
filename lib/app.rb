require_relative './scraper'
require_relative './student'

scraper_2 = Scraper.new("http://flatironschool-bk.herokuapp.com")

name = scraper_2.get_students_names

blog_name = scraper_2.get_students_blogs

twitter = scraper_2.get_students_twitter


students = []
28.times do |i| 
	students << Students.new(name[i], twitter[i], blog_name[i])  #using example from Nisha's code
end


 #name equals element from student_names array
students.each do |student|
						puts student.name
						puts student.twitter
						puts student.blog_name
				end

puts "Ask for stuff or pick random!"
input = gets.chomp

def get_random(choice)
	puts array.rand {}
end

#if input = "random" do {get_random
#end

def get_blog (array, name)
array.each.select do |student| 
	if student.name == name
	puts "Here is the URL #{student.blog_name}"
	else
		nil
	end
end
end

def get_twitter (array, name)
array.each.select do |student| 
	if student.name == name
	puts "Here is the URL #{student.twitter}"
	else
		nil
	end
end
end

get_blog(students, "Chris Haack")
get_twitter(students, "Chris Haack")