class FilmesController < ApplicationController
  def show
  	@film = Filme.find(params[:id])
    @genrelist = Genreassembly.all()
  end

  def index
  	a =  params[:genre]
    @films = Filme.all
    @genres = Genre.all
    @repliques = Replique.all
    @replique = @repliques.shuffle.first

    genrelist = Genreassembly.where(genre_id: a , manga_id: nil)
    @gselect = 0
    if (a != nil && a != '0')
      @gselect = a.to_i

      tab = []
      genrelist.each do |f|
          tab << Filme.find(f.filme_id)
        end
      @films = tab
    end
  end

  def new
  	@film = Filme.new()
  end

  def create
  	@film = Filme.new(film_params)
  	if @film.save
  		redirect_to filmes_path
  	else
  	end
  end

  def edit
  	@film = Filme.find(params[:id])
  end

  def update
  	@film = Filme.find(params[:id])
  	if @film.update(film_params)
  		redirect_to @film
  	else

  	end
  end

  def destroy
    @film = Filme.find(params[:id])
    @film.remove_image
  	Filme.destroy(params[:id])
  	redirect_to filmes_path
  end

end
