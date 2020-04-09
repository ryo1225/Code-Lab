class Lab < ApplicationRecord

	belongs_to :user, optional: true
	attachment :image

	validates :title, presence: true, length: {maximum: 10}
	validates :introduction, presence: true, length: {maximum: 50}
	validates :month, presence: true
	validates :day, presence: true
	validates :time, presence: true
	validates :region, presence: true
	validates :place, presence: true
	validates :language, presence: true
	validates :price, presence: true
	validates :image, presence: true
	validates :people, presence: true

end
