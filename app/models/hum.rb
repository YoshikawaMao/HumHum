class Hum < ApplicationRecord
  attachment :image
  belongs_to :user
  has_many :hum_comments, dependent: :destroy
end
