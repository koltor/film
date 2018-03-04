class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :titre
      t.string :video
      t.string :description
      t.integer :num
      t.references :saison, foreign_key: true
      t.string :langue
      t.string :sous_titre

      t.timestamps
    end
  end
end
