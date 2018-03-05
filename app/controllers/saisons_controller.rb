class SaisonsController < ApplicationController

	def index
    @mangas = Manga.all
	end

	def show
		@saison = Saison.find(params[:id])
    @manga = Manga.find_by_id(@saison.manga_id)

		respond_to do |f|
    	f.js
    	f.html
  	end
	end

	 def new()
  	@saison = Saison.new()
  	@manga = Manga.find(params[:id])
  	
  	respond_to do |f|
    	f.js
    	f.html
  	end
 	 end

 	 def create()
 	 	@saison = Saison.new(saison_params)
 	 	@manga = Manga.find(params[:id])
 	  @saison.save
 	 	@manga.saisons << @saison

 	 	respond_to do |f|
    	f.js
    	f.html
  	end
 	 end

   def edit()
    @saison = Saison.find(params[:id])
    @manga = Manga.find_by_id(@saison.manga_id)
    respond_to do |f|
        f.js
        f.html 
      end
   end

   def update()
    @saison = Saison.find(params[:id])
    @saison.update(saison_params)
    redirect_to saisons_path
    respond_to do |f|
      f.js
      f.html 
    end
   end

 	 def destroy
 	 		@saison = Saison.destroy(params[:id])
 	 		@mangas = Manga.all
      respond_to do |f|
        f.js
        f.html 
      end
 	 end

  def saison_params
		params.require(:saison).permit(:manga_id, :titre)
	end
end
