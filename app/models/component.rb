class Component < ActiveRecord::Base
  attr_accessible :description, :part_no, :price, :quantity, :rating
  belongs_to :user

  validates :user_id, :price, :quantity, :rating, presence: true
  validates :description, presence: true, length: { maximum: 140 } #------------------
  validates :part_no,     presence: true, length: { maximum: 25 }  # arbitrary numbers; just to manage database size and data viewability
  validates :price, :quantity, numericality: true
  # validates :supplier_name,    presence: true

  def self.search(search)
    if search
      find(:all, :conditions => ['part_no LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

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
