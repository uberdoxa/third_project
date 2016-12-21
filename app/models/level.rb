class Level < ApplicationRecord
  has_many :challenges
  has_many :users
end
