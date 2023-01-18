class Route < ApplicationRecord
  has_many :stops
  accepts_nested_attributes_for :stops, reject_if: :all_blank, allow_destroy: true
end
