class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :keeper, :user_id
end
