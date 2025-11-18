# frozen_string_literal: true

FactoryBot.define do
  factory :temperature_reading do
    temperature { 1.5 }
    recorded_at { "2025-11-18 22:09:25" }
    temperature_sensor { nil }
  end
end
