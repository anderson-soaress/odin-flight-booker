class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure, foreign_key: { to_table: 'airports' }
      t.references :arrival, foreign_key: { to_table: 'airports' }
      t.datetime :date
      t.time :duration
      t.timestamps
    end
  end
end
