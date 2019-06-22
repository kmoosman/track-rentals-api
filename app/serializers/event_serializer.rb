class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :transponders
end
