class RobotSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo

  embed :ids

  has_many :missions
end
