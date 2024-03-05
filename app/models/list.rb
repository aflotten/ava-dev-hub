class List < ApplicationRecord
  validates :title, presence: true

  after_create_commit { broadcast_prepend_to "lists" }
  after_update_commit { broadcast_replace_to "lists" }
  after_destroy_commit { broadcast_remove_to "lists" }

  has_rich_text :notes
end
