class Supplier < ActiveRecord::Base
	attr_accessible :name, :overall_rating, :description
	belongs_to :user
	belongs_to :component

end
