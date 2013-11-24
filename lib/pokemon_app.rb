require './pokemon_scraper'
require './pokemon_class'

p_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Category:Pokémon")
pokemon_create = p_scraper.get_pokemon

pokemons = []

pokemons << Pokemon.new(pokemon_create)

pokemons.each do |item|
	puts item.name
end

puts pokemons.inspect