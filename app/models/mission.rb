class Mission < ActiveRecord::Base
  belongs_to :robot

  validates :song, :dance, :location, presence: true
  validates :robot, presence: true
end
