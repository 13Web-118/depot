class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
