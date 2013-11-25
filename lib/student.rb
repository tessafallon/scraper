require './scraper'

class Students
	attr_accessor :name, :blog_name, :twitter
def initialize (name='', twitter='', blog_name='')
	
	@name = name
	@twitter = twitter
	@blog_name = blog_name
	end

end
#separate three variables into separate methods