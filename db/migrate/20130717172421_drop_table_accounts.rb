class DropTableAccounts < ActiveRecord::Migration
	def change
		drop_table :accounts
	end
end
