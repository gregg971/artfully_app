# This migration comes from artfully_ose_engine (originally 20131206153323)
class AddMembershipKit < ActiveRecord::Migration
  def change
    MembershipKit.create!({:state => "activated", :organization => Organization.first}, :without_protection => true)
  end
end
