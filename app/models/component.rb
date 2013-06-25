class Component < ActiveRecord::Base
  attr_accessible :description, :part_no, :price, :quantity, :rating, :supplier

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |component|
        csv << component.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      component = find_by_id(row["id"]) || new
      component.attributes = row.to_hash.slice(*accessible_attributes)
      component.save!
    end
  end

end
