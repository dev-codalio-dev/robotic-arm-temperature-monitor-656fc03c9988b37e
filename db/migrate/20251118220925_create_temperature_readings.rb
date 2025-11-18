class CreateTemperatureReadings < ActiveRecord::Migration[7.2]
  def change
    create_table :temperature_readings do |t|
      t.float :temperature, null: false
      t.datetime :recorded_at, null: false
      t.references :temperature_sensor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
