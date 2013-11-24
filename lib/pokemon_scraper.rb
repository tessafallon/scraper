

#require the libraries that we need
require 'open-uri' #open the file on the internet
require 'nokogiri'#line10 to create a Nokogiri object to download

class Scraper
	attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	def get_pokemon
		test = html.search('td').collect { |td| td.text }
	end

end

p_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Species")

puts p_scraper.get_pokemon.inspect


