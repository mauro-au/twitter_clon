class Tweet < ApplicationRecord
  validates :username, :description, presence: true
end
