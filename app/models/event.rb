class Event < ActiveRecord::Base
  default_scope -> { order(start: :asc) }
  belongs_to :user
  validates :user_id, presence: true
end
