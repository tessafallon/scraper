

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
		test = html.search('title')
		test2 = test.to_s
		test2.split("Pokemon")
		test2[1]
	end
end

my_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Weedle")
puts my_scraper.get_students_names
