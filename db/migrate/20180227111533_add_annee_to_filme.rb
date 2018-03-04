class AddAnneeToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :annee, :integer
  end
end
