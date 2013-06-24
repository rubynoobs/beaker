class Component < ActiveRecord::Base
  attr_accessible :description, :part_no, :price, :quantity, :rating, :supplier
end
