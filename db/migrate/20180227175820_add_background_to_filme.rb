class AddBackgroundToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :background, :string
  end
end
