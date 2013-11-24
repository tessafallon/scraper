#require the libraries that we need
require 'open-uri' #open the file on the internet
require 'nokogiri'#line10 to create a Nokogiri object to download

class Scraper
	attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	def get_students_names
		test = html.search('h3')
		test.each do |h3|
			puts h3.text
		end
	end
	
	def get_students_blogs
		blogs = []
		test1 = html.search('ul.social a.blog @href')
	
	end

	def get_students_twitter
		test4 = html.search('a.twitter @href')
	end
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")
puts my_scraper.get_students_blogs
