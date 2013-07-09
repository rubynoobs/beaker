class Supplier < ActiveRecord::Base
	attr_accessible :name, :overall_rating, :description
	has_many :components, dependent: :destroy

end
