class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :surnom
      t.string :email
      t.string :telephone
      t.string :adresse

      t.timestamps
    end
  end
end
