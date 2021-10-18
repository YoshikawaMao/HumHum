class Genre < ApplicationRecord
  has_many :hum_comments, dependent: :destroy
end
