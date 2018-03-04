class AddTempsToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :duree, :string
  end
end
