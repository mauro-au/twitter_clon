class Tweet < ApplicationRecord
  validates :username, :description, presence: true
  
  include PgSearch::Model
  pg_search_scope :search_full_text,
  against: {
    username: "A",
    description: "B",
    id: "C"
  },
  using: {
    tsearch: { prefix: true } # Activa búsquedas parciales
  }
end
