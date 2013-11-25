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
		names = []
		html.search('h3').each do |h3|
			names << h3.text
		end
		names
	end
	
	def get_students_blogs
		blogs = []
		html.search('ul.social').each do |blog_url|
			blogs << blog_url.search('a.blog @href').text
		end
		blogs.insert(4, "xxxx") #this fixes this issue caused by students having no href (blank or text) assoc with thier name
		blogs.insert(20, "yyyy")#no links fix
	end

	def get_students_twitter
		twitter = []
		html.search('ul.social').each do |twitter_url|
			twitter << twitter_url.search('a.twitter @href').text
		end
		twitter.insert(4, "xxxx")
		twitter.insert(20, "yyyy") #this fixes this issue caused by David Gabeau having no href (blank or text) assoc with his name
	end
end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")