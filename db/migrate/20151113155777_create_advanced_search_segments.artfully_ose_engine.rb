# This migration comes from artfully_ose_engine (originally 20150520202900)
class CreateAdvancedSearchSegments < ActiveRecord::Migration
  def change
    create_table :advanced_search_segments do |t|
      t.string :name

      t.timestamps
    end
  end
end
