class ChangeSupplierToSupplierName < ActiveRecord::Migration
  def up
  	rename_column :components, :supplier, :supplier_name
  end

  def down
  end
end
