# frozen_string_literal: true

class TemperatureReading < ApplicationRecord
  belongs_to :temperature_sensor

  validates :temperature, presence: true
  validates :recorded_at, presence: true

  rhino_owner :temperature_sensor
  rhino_references [ :temperature_sensor ]
end
