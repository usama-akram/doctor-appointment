class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :start_from, null: false
      t.datetime :end_at, null: false
      t.belongs_to :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
