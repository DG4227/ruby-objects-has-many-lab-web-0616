
class Author

	attr_accessor :name, :posts

	@@all = []
	@@post_count = 0

	def self.post_count
		Author.all.each do |author|
					@@post_count += author.posts.count
		end
			@@post_count
	end


	def self.all
		@@all
	end


	def initialize(name)
		@name = name
		@posts = []
		@@all << self
	end

	def add_post(post)
		@posts << post
		post.author = self
	end

	def add_post_by_title(post)
		post = Post.new(post)
		self.add_post(post)
	end

end