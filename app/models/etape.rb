class Etape < ActiveRecord::Base
  has_ancestry(:orphan_strategy => :rootify)
  attr_accessible :nom, :rappel, :parent_id
end
