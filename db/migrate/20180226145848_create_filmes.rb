class CreateFilmes < ActiveRecord::Migration[5.1]
  def change
    create_table :filmes do |t|
      t.string :titre
      t.string :titre2
      t.string :image
      t.string :langue
      t.string :couleur
      t.string :description

      t.timestamps
    end
  end
end
