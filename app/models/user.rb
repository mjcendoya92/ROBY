class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dogs, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :comments, dependent: :destroy


  validation :name, presence: true, length: { minimum: 3}
  validation :location, presence: true
  validation :bio, presence: true, length: { minimum: 10}
  validation :email, uniqueness: true

end
