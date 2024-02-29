class List < ApplicationRecord
  validates :title, presence: true

  has_rich_text :notes
end
