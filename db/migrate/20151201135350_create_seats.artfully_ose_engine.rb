# This migration comes from artfully_ose_engine (originally 20140828195617)
class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :chart_id,        :null => false
      t.integer :row_index
      t.integer :col_index
      t.string  :row_label
      t.string  :col_label
      t.string  :label

      t.boolean :available
      t.boolean :killed
      t.timestamps
    end
  end
end
