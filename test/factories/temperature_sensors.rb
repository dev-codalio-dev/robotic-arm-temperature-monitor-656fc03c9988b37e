# frozen_string_literal: true

FactoryBot.define do
  factory :temperature_sensor do
    name { "MyString" }
    location { "MyString" }
    organization { nil }
  end
end
