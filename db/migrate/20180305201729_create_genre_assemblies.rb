class CreateGenreAssemblies < ActiveRecord::Migration[5.1]
  def change
    create_table :genreassemblies do |t|
      t.references :genre
      t.references :filme
      t.references :manga

      t.timestamps
    end
  end
end
