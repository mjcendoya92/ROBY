class Comment < ApplicationRecord
  belongs_to :users, :activities

  validation :content, presence: true, length: { minimum: 10 }
end
