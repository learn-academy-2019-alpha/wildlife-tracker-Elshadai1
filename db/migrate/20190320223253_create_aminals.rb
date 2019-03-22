class CreateAminals < ActiveRecord::Migration[5.2]
  def change
    create_table :aminals do |t|
      t.string :commonname
      t.string :latinname
      t.string :kingdom

      t.timestamps
    end
  end
end
