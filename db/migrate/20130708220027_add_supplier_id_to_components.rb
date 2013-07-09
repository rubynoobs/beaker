class AddSupplierIdToComponents < ActiveRecord::Migration
  def change
  	add_column :components, :supplier_id, :integer
  end
end
