class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name, null: false
      t.string :age, null: false

      t.timestamps
    end
  end
end
