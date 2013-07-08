class AddIndexToComponentsSupplierId < ActiveRecord::Migration
  def change
  	add_index :components, :supplier_id, unique: true
  end
end
