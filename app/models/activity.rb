class Activity < ApplicationRecord
  belongs_to :theme
  belongs_to :user


  include PgSearch::Model
  pg_search_scope :search_activity,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_theme,
    against: [],
    associated_against: {
      theme: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
