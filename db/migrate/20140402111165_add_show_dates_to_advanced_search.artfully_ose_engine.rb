# This migration comes from artfully_ose_engine (originally 20140319191237)
class AddShowDatesToAdvancedSearch < ActiveRecord::Migration
  def change
    add_column :searches, :show_date_start, :datetime, :default => nil
    add_column :searches, :show_date_end, :datetime, :default => nil
  end
end
