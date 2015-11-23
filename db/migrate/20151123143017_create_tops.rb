class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :current_size
      t.float :gauge
      t.string :stitch
      t.integer :number_of_sts
      t.string :pattern_repeat
      t.string :instructions

      t.timestamps null: false
    end
  end
end
