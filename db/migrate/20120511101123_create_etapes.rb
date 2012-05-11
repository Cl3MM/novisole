class CreateEtapes < ActiveRecord::Migration
  def change
    create_table :etapes do |t|
      t.string :nom
      t.integer :rappel

      t.timestamps
    end
  end
end
