class GenreassembliesController < ApplicationController
  
  def index
  end

  def new

  	film = params[:filme_id]
  	manga = params[:manga_id]

  	if params[:style] == " + "
  		genreassembly = Genreassembly.new(genreassemblie_params)
  		genreassembly.save()
  	end

  	if (film != "")
  		@video = Filme.find_by_id(film)
  		@type = "film"
  		@film = Filme.find(film)
  		@genre_list = Genreassembly.all.where(filme_id: film)
  		if params[:style] == " - "
  			Genreassembly.destroy(Genreassembly.where(genre_id: params[:genre_id], filme_id: film).ids)
  		end
  		if params[:style] == "reset"
  		Genreassembly.destroy(Genreassembly.where(filme_id: film).ids)
  		end
  	else
  		@video = Manga.find_by_id(manga)
  		@type = "manga"
  		@manga = Manga.find(manga)
  		@genre_list = Genreassembly.all.where(manga_id: manga)
  		if params[:style] == " - "
  			Genreassembly.destroy(Genreassembly.where(genre_id: params[:genre_id], manga_id: manga).ids)
  		end
  		if params[:style] == "reset"
  			Genreassembly.destroy(Genreassembly.where(manga_id: manga).ids)
  		end
  	end

  	@genres = Genre.all()
    @genrelist = Genreassembly.all()

  	respond_to do |f|
      f.js
      f.html 
    end
  end

   def genreassemblie_params
		params.permit(:filme_id, :manga_id, :genre_id)
	end
end
