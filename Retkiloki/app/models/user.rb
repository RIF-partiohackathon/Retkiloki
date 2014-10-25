class User < ActiveRecord::Base

  belongs_to :age_group
  has_many :attendances
  has_many :events, through: :attendances

end
