# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, :position, presence: true
  belongs_to :user
end
