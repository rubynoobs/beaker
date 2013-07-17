class RenameSupplierIdColumnInComponents < ActiveRecord::Migration
  def change
  	rename_column :components, :supplier_id, :user_id
  end
end
