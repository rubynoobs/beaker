namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_components
		# make_suppliers
	end
end

def make_users
	admin = User.create!(email: "example@thing.org",
						 password: "winning11",
						 password_confirmation: "winning11")
	admin.toggle!(:admin)

	12.times do |n|
		name 		= "Warehouse #{n+1}"
		email 	= "example-#{n+1}@thing.org"
		password = "password"
		supplier = User.create!(email: email,
					 					password: password,
					 					password_confirmation: password)
		supplier.toggle!(:supplier)
		# supplier = Component.create!()
	end

	87.times do |n|
		name 		= Faker::Name.name
		email 	= "example-#{n+13}@thing.org"
		password = "password"
		User.create!(email: email,
					 	 password: password,
						 password_confirmation: password)
	end
end

def make_components
	users = User.all(limit: 20)
	users.each do
		5.times do |n|
			description 		= "Lorem ipsum"
			part_no 				= "239#{n+1}"
			price 				= "23.49"
			quantity 			= "29"
			rating 				= "3"
			supplier_name 		= users.name
			supplier_id			= users.id

			# users.each { |user| user.
				Component.create!(description: description,
													part_no: part_no,
													price: price,
													quantity: quantity,
													rating: rating,
													supplier_name: supplier_name,
													supplier_id: supplier_id)
		end
	end
end

def make_suppliers
	suppliers = User.all(limit: 12)

	20.times do
		name 						= Faker::Name.name
		overall_rating			= [A:"A+", B:"B-", C:"C+", D:"C-", E:"B"].sample
		supplier_description	= Faker::Lorem.sentence(7)

		suppliers.each { |supplier| supplier.id.Component.create!(description: component_description,
																				 part_no: part_no,
																				 price: price,
																				 quantity: quantity,
																				 rating: rating,
																				 supplier_name: supplier_name,
																				 supplier_id: supplier.id)
		supplier.toggle!(:supplier)}
	end
end