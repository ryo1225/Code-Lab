class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :labs, dependent: :destroy
  has_many :lab_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :profile_image

  validates :name, presence: true, length: {maximum: 20}
  validates :email, presence: true, length: {maximum: 50}
  validates :word, length: {maximum: 50}
  validates :profile_image, presence: true

end
