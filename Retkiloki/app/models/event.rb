class Event < ActiveRecord::Base

  has_many :attendances
  has_one :type
  has_one :venue
  has_many :users, through: :attendances
end
