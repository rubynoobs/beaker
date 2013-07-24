class SuppliersController < ApplicationController

	def index
		@suppliers = User.where(supplier: true).paginate(page: params[:page])
	end
end
