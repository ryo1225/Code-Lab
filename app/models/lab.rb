class Lab < ApplicationRecord

	belongs_to :user, optional: true
	attachment :image
	has_many :lab_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
        def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end

	validates :title, presence: true, length: {maximum: 20}
	validates :introduction, presence: true, length: {maximum: 50}
	validates :month, :day, :time, :region, :place, :language, :image, presence: true
	validates :price, presence: true, numericality: true
	validates :people, presence: true, numericality: true

end
