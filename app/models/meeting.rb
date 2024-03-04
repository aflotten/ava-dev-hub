class Meeting < ApplicationRecord
  validates :title, presence: true

  after_create_commit { broadcast_prepend_to "meetings" }
  after_update_commit { broadcast_replace_to "meetings" }
  after_destroy_commit { broadcast_remove_to "meetings" }

  has_rich_text :body
end
