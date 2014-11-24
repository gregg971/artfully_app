# This migration comes from artfully_ose_engine (originally 20131106191847)
class AddSuggestedHouseholds < ActiveRecord::Migration
  def up
    create_table :suggested_households do |t|
      t.string  :ids, :null => false
      t.boolean :ignored, :default => false
      t.timestamps
    end
  end

  def down
    drop_table :suggested_households
  end
end
