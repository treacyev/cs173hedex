class TesdaCourseSector < ApplicationRecord
  has_many :tesda_courses, dependent: :delete_all

  def self.search(search)
  	where("tcs_name ILIKE ?", "%#{search}%")
  end
end
