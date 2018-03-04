class SearchMovies
	def perform(string)
		search(string)
	end

	def initialize
		Tmdb::Api.key("f7cde45575c46dbabb91d9a8df200b67")
		Tmdb::Api.language("fr")
	end

	def search(string)
		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(string) # the query to search against
		@search.fetch # makes request
	end
end