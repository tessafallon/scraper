

class Students
	attr_accessor :name, :blog_name, :twitter
def initialize (name='', twitter='', blog_name='')
	@name = name
	@twitter = twitter
	@blog_name = blog_name
	end
end

def get_twitter(name)
end

def rand_twit
end

def get_blog
end

def get_blog (name)
	if name = @name
		puts @blog_name
	else
		puts "not found"
	end
end




#separate three variables into separate methods