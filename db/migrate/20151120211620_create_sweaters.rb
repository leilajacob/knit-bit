class CreateSweaters < ActiveRecord::Migration
  def change
    create_table :sweaters do |t|
      t.text :full_pattern
      t.string :pattern_repeat
      t.string :current_size
      t.string :decrease_row
      t.string :increase_row

      t.timestamps null: false
    end
  end
end
