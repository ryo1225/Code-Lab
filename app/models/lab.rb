class Lab < ApplicationRecord
	belongs_to :user, optional: true
	attachment :image
	has_many :lab_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
      def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
      end
  has_many :attends, dependent: :destroy
      def attended_by?(user)
        attends.where(user_id: user.id).exists?
      end

  scope :recent, -> { where(id: Favorite.group(:lab_id).order('count(lab_id) desc').limit(3).pluck(:lab_id)) }

	validates :title, presence: true, length: {maximum: 20}
	validates :introduction, :month, :day, :time, :region, :place, :language, :image, presence: true
	validates :price, presence: true, numericality: true
	validates :people, presence: true, numericality: true

  geocoded_by :place
  after_validation :geocode, if: :place_changed?


  def self.match(model, content)
    if model == 'language'
      Lab.where("(language LIKE ? )", "%#{content}%")
    else
       Lab.where("(region LIKE ? ) OR (place LIKE ?)", "%#{content}%", "%#{content}%")
    end
  end

end
