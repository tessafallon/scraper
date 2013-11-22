require './scraper'

class Students
	attr_accessor :name, :blog_name, :twitter
def initialize (name, blog_name, twitter)
	@name = name
	@blog_name = blog_name
	@twitter = twitter
	end

end

#separate three variables into separate methods