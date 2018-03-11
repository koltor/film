class CreateRepliques < ActiveRecord::Migration[5.1]
  def change
    create_table :repliques do |t|
      t.string :corps
      t.string :source

      t.timestamps
    end
  end
end
