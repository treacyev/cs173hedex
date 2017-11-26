class Section < ApplicationRecord
  belongs_to :principal
  belongs_to :institution
  has_and_belongs_to_many :teachers
end
