class CreateMangas < ActiveRecord::Migration[5.1]
  def change
    create_table :mangas do |t|
      t.string :titre
      t.string :titre2
      t.string :image
      t.string :couleur
      t.string :description
      t.string :duree
      t.string :annee
      t.string :background
      t.string :lien

      t.timestamps
    end
  end
end
