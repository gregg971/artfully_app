# This migration comes from artfully_ose_engine (originally 20140829135426)
class AddVenueToChart < ActiveRecord::Migration
  def change
    add_column :charts, :venue_id, :integer, :default => nil
  end
end
