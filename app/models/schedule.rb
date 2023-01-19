class Schedule < ApplicationRecord
  belongs_to :route
  has_one :car
  has_many :tickets
end
