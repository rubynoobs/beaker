FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person_#{n}" }
		sequence(:email) { |n| "person_#{n}@example.com" }
		password						"foobar11"
		password_confirmation 	"foobar11"

		# factory :admin do
		# 	admin true
		# end
	end

	factory :component do
		description	"Thingamajiggy"
		part_no	"2398723498"
		price		"23.49"
		quantity	"29"
		rating	"3"
		supplier_Name	"Nicolas Cage Emporium"
		supplier_id "132"

		# user
	end

	factory :supplier do

	end
end
