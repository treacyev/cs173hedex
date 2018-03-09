class Teacher < ApplicationRecord
  belongs_to :institution
  has_and_belongs_to_many :tesda_courses
  has_and_belongs_to_many :sections

  def self.search(search)
  	where("t_fname ILIKE ? OR t_mname ILIKE ? OR t_lname ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end