class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :password
      t.string :password_digest
      t.string :avatar
      t.string :status

      t.timestamps
    end
  end
end
