require './pokemon_scraper'
require './pokemon_class'

p_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Weedle")
pokemon_create = p_scraper.get_pokemon

pokemons = []

pokemons.each do |i|
pokemons << Pokemon.new(pokemon_create[i])
end

pokemons.each do |pokemon|
	puts pokemon.name
end