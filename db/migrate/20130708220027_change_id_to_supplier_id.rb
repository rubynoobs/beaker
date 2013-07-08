class ChangeIdToSupplierId < ActiveRecord::Migration
  def up
  	add_column :components, :supplier_id, :integer
  end

  def down
  end
end
