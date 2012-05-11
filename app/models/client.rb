class Client < ActiveRecord::Base
  attr_accessible :adresse, :email, :nom, :prenom, :surnom, :telephone
end
