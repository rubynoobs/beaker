namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_components
	end
end

def make_users
	admin = User.create!(email: "example@thing.org",
						 password: "winning11",
						 password_confirmation: "winning11")
	# admin.toggle!(:admin)

	99.times do |n|
		name 		= Faker::Name.name
		email 	= "example-#{n+1}@thing.org"
		password = "password"
		User.create!(email: email,
					 password: password,
					 password_confirmation: password)
	end
end

def make_components
	50.times do |n|
		description 		= "Lorem ipsum"
		part_no 				= "239#{n+1}"
		price 				= "23.49"
		quantity 			= "29"
		rating 				= "3"
		supplier_name 		= "Nicolas Cage Emporium"
		supplier_id			= "#{n+1}"

		Component.create!(description: description,
												part_no: part_no,
												price: price,
												quantity: quantity,
												rating: rating,
												supplier_name: supplier_name,
												supplier_id: supplier_id)
		# suppliers.each { |supplier| supplier.Component.create!(description: description,
		# 										part_no: part_no,
		# 										price: price,
		# 										quantity: quantity,
		# 										rating: rating,
		# 										supplier: supplier_name) }
	end
end