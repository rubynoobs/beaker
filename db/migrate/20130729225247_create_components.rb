class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|

    	t.string  :part_no
      t.integer :quantity
      t.string  :description
      t.decimal :price
      t.string  :supplier_name
      t.string	 :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
