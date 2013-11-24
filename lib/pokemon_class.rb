require './pokemon_scraper'

class Pokemon
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def say_name(name)
		puts "My name is #{name}"
	end
end