class GenresController < ApplicationController
  def new
  	@genre = Genre.new()
  end

   def create
  	@genre = Genre.new(genre_params)
  	@genre.save
  	redirect_to new_genre_path
  end

  def index
  	@genres = Genre.all()
  	id = params[:id]
  	@type = params[:type]
    
  	if (@type == "film")
  		@video = Filme.find_by_id(id)
      @genre_list = Genreassembly.all.where(filme_id: id)
  	else
  		@video = Manga.find_by_id(id)
      @genre_list = Genreassembly.all.where(manga_id: id)
  	end

      respond_to do |f|
        f.js
        f.html 
      end
  end

  def genre_params
		params.require(:genre).permit(:contenu)
	end
end
