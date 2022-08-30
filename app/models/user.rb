class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable






  validation :name, presence: true
  validation :location, presence: true
  validation :bio, presence: true, length: { minimum: 10}
  validation :email, uniqueness: true
end
