class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :aminal_id
      t.string :date
      t.string :time
      t.string :latitude
      t.string :longitude
      t.string :regions

      t.timestamps
    end
  end
end
