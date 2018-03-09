class Institution < ApplicationRecord
  belongs_to :region
  has_many :data_records, dependent: :delete_all
  has_many :faculty_headcounts, dependent: :delete_all
  has_many :tuitions, dependent: :delete_all
  has_many :inst_contacts, dependent: :delete_all
  has_and_belongs_to_many :tesda_courses
  has_many :sections, dependent: :delete_all
  has_many :teachers, dependent: :delete_all
  has_many :principals, dependent: :delete_all

  def self.search(search)
  	where("name ILIKE ? OR inst_class ILIKE ? OR address_province ILIKE ? OR address_municipality ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
