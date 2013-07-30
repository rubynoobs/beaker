module ComponentsHelper
	#Returns the full title on a per-page basis.
	def supplier_name(user_id)

		if User.where(id: user_id).exists?
			supplier_name = User.find_by_id(user_id).name
			"#{supplier_name}".humanize
		else
			"-------"
		end
	end
end
