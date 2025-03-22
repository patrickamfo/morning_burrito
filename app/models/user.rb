class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_challenges, dependent: :destroy
  has_many :challenges, through: :user_challenges
  validates :length_preference, inclusion: { in: [6, 14, 32], allow_blank: true }
  validates :category_preference, inclusion: { in: ["Crafting", "Creative Writing", "Creative Lesson"], allow_blank: true }
  validates :first_name, presence: true
end
