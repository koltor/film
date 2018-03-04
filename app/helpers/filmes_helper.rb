module FilmesHelper
	def film_params
		params.require(:filme).permit(:titre, :titre2, :video, :lien ,:background,:image, :description, :langue, :couleur, :duree, :sous_titre, :annee)
	end
end
