# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, :position, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  belongs_to :user
end
