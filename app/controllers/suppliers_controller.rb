class SuppliersController < ApplicationController

	def index
		@suppliers = User.where(supplier: true).paginate(page: params[:page]).sort_by!{ |m| m.name.downcase } # sorted alphabetically
	end
end
