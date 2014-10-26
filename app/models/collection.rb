class Collection < ActiveRecord::Base
  belongs_to :user

  validates :name, length: { minimum: 2 }
  # validates :user_id, presence: true

  paginates_per 5
  max_paginates_per 50
end
