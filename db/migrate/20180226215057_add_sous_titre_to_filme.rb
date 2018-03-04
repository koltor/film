class AddSousTitreToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :sous_titre, :string
  end
end
