class AddAncestryToEtapes < ActiveRecord::Migration
  def change
    add_column :etapes, :ancestry, :string
  end
end
