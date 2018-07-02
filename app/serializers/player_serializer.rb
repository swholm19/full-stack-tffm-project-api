# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :keeper, :user_id, :roster_spot
end
