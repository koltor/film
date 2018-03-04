class MangasController < ApplicationController
 
   def show
  	@manga = Manga.find(params[:id])
  end

  def index
  	@mangas = Manga.all
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
