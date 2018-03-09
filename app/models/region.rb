class Region < ApplicationRecord
  has_many :regional_data_records, dependent: :delete_all
  has_many :institutions, dependent: :delete_all

  def self.search(search)
  	where("region_name ILIKE ?", "%#{search}%")
  end
end
