class MangasController < ApplicationController
 
   def show
  	@manga = Manga.find(params[:id])
    @genrelist = Genreassembly.all()
  end

  def index
    a =  params[:genre]
    @mangas = Manga.all
    @genres = Genre.all
    genrelist = Genreassembly.where(genre_id: a, filme_id: nil)
    @gselect = 0
    if (a != nil && a != '0')
      @gselect = a.to_i
      tab = []
      genrelist.each do |f|
          tab << Manga.find(f.manga_id)
        end
      @mangas = tab
    end
  end

  def new
  	@manga = Manga.new()
  end

  def create
  	@manga = Manga.new(manga_params)
  	if @manga.save
  		redirect_to mangas_path
  	else
  	end
  end

  def edit
  	@manga = Manga.find(params[:id])
  end

  def update
  	@manga = Manga.find(params[:id])
  	if @manga.update(manga_params)
  		redirect_to @manga
  	else

  	end
  end

  def destroy
    @manga = Manga.find(params[:id])
    @manga.remove_image
  	Manga.destroy(params[:id])
  	redirect_to mangas_path
  end

end
