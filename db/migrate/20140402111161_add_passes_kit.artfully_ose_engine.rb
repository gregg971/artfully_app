# This migration comes from artfully_ose_engine (originally 20140304174807)
class AddPassesKit < ActiveRecord::Migration
  def change
    PassesKit.create!({:state => "activated", :organization => Organization.first}, :without_protection => true)
  end
end
