class CreateSaisons < ActiveRecord::Migration[5.1]
  def change
    create_table :saisons do |t|
      t.string :titre
      t.references :manga, foreign_key: true

      t.timestamps
    end
  end
end
