# frozen_string_literal: true

class TemperatureSensor < ApplicationRecord
  belongs_to :organization
  has_many :temperature_readings, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true

  rhino_owner :organization
  rhino_references [ :organization ]
end
