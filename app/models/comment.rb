class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validation :content, presence: true, length: { minimum: 10 }
end
