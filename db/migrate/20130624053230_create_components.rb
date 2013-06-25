class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|

      t.string  :part_no
      t.integer :quantity
      t.string  :description
      t.decimal :price
      t.string  :supplier
      t.integer :rating

    end
  end
end

