class AddDureeToEpisode < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :duree, :string
  end
end
