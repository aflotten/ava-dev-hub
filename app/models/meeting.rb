class Meeting < ApplicationRecord
  validates :body, presence: true

  after_create_commit { broadcast_prepend_to "meetings" }
  # after_update_commit { broadcast_replace_to "meetings" }
end