class SuppliersController < ApplicationController
	def index
		@suppliers = User.where(supplier: true).paginate(page: params[:page]).sort_by!{ |m| m.name.downcase } # sorted alphabetically
	end

	def show
		@supplier = User.find(params[:id])
	end

	# private
	# 	def supplier_params
	# 		params.require(:component).permit(:description, :part_no, :price, :quantity, :rating)
	# 	end
end # end file
