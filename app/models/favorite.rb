class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :good, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :good_id, presence: true
end
