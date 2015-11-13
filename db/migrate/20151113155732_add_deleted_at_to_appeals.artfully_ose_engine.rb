# This migration comes from artfully_ose_engine (originally 20140702150521)
class AddDeletedAtToAppeals < ActiveRecord::Migration
  def self.up
    add_column :appeals, :deleted_at, :datetime
  end

  def self.down
    remove_column :appeals, :deleted_at
  end
end
