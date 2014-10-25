class Event < ActiveRecord::Base

  has_many :attendances
  belongs_to :type
  belongs_to :venue
  has_many :users, through: :attendances
end
