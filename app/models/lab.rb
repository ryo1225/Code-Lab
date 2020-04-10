class Lab < ApplicationRecord

	belongs_to :user, optional: true
	attachment :image
	has_many :lab_comments, dependent: :destroy

	validates :title, presence: true, length: {maximum: 10}
	validates :introduction, presence: true, length: {maximum: 50}
	validates :month, :day, :time, :region, :place, :language, :image, presence: true
	validates :price, presence: true, numericality: true
	validates :people, presence: true, numericality: true

end
