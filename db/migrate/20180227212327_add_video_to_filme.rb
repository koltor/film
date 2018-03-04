class AddVideoToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :video, :string
  end
end
