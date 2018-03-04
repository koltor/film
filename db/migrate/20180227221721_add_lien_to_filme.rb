class AddLienToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :lien, :string
  end
end
