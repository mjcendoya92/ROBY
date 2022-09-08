class User < ApplicationRecord
  has_one_attached :photo
  has_one_attached :banner_photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :dogs, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :sent_follows, class_name: :Follow, foreign_key: :follower_id, dependent: :destroy
  has_many :received_follows, class_name: :Follow, foreign_key: :followee_id, dependent: :destroy
  has_many :that_they_follow, through: :sent_follows, source: :followee, dependent: :destroy
  has_many :that_follow_them, through: :received_follows, source: :follower, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates :location, presence: true
  validates :bio, presence: true, length: { minimum: 10 }
  validates :email, uniqueness: true
end
