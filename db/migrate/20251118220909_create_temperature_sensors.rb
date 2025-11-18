class CreateTemperatureSensors < ActiveRecord::Migration[7.2]
  def change
    create_table :temperature_sensors do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
    add_index :temperature_sensors, :name, unique: true
  end
end
