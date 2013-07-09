class CreateSuppliersTable < ActiveRecord::Migration
	def change
		create_table :suppliers do |t|
			t.string :name
			t.string :overall_rating
			t.string :description

			t.timestamps
		end
		add_index :suppliers, [:name, :overall_rating]
	end
end