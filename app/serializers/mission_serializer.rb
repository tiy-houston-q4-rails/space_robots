class MissionSerializer < ActiveModel::Serializer

  attributes :id, :song, :dance, :location, :completed, :robot_id


end
