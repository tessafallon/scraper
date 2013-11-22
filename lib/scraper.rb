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
	end
	
	def get_students_blogs
		test3 = html.search('a.blog @href')
	end

	def get_students_twitter
		test4 = html.search('a.twitter @href')
	end
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")

