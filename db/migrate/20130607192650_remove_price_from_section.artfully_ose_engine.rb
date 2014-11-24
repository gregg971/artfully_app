# This migration comes from artfully_ose_engine (originally 20130531160802)
class RemovePriceFromSection < ActiveRecord::Migration
  def change
    remove_column :sections, :price
  end
end
