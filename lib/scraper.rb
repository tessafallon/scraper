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
		test = html.search('h3').each do |h3|
			puts h3.text
		end
	end
	
	def get_students_blogs
		blogs = []
		html.search('ul.social').each do |blog_url|
			blogs << blog_url.search('a.blog @href').text
		end
		puts blogs
	end

	def get_students_twitter
		twitter = []
		html.search('ul.social').each do |twitter_url|
			twitter << twitter_url.search('a.twitter @href').text
		end
		puts twitter
	end
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")
puts my_scraper.get_students_twitter