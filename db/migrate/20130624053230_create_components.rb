class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.decimal :price
      t.string :supplier
      t.integer :rating

    end
  end
end

