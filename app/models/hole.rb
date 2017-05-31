class Hole < ApplicationRecord
  belongs_to :course

  validates :hole_number, presence: true
end
