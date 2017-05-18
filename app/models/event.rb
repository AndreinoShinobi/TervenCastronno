class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true

  validates_uniqueness_of :name, scope: :date
end
