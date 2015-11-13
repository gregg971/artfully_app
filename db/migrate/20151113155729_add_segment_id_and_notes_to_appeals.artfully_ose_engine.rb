# This migration comes from artfully_ose_engine (originally 20140701124100)
class AddSegmentIdAndNotesToAppeals < ActiveRecord::Migration
  def self.up
    add_column :appeals, :segment_id, :integer, :after => :channel
    add_column :appeals, :notes, :text, :after => :raised
    add_index :appeals, :segment_id
  end

  def self.down
    remove_column :appeals, :segment_id
    remove_column :notes
  end
end
