class LabComment < ApplicationRecord
  belongs_to :user
  belongs_to :lab

  validates :comment, presence: true
end
