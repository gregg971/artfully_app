# This migration comes from artfully_ose_engine (originally 20140702121928)
class AddMaterialsToAppeals < ActiveRecord::Migration
  def self.up
    remove_column :appeals, :materials
    add_attachment :appeals, :file_1, :file_2, :file_3
  end

  def self.down
    remove_attachment :appeals, :file_1, :file_2, :file_3
    add_column :appeals, :materials, :text, :after => :segment_id
  end
end
