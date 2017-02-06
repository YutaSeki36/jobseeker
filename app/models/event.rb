class Event < ActiveRecord::Base
  default_scope -> { order(start: :asc) }
end
