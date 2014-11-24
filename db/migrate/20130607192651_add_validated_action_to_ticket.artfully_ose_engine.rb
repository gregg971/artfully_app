# This migration comes from artfully_ose_engine (originally 20130604161411)
class AddValidatedActionToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :validated_action_id, :integer, :default => nil
  end
end
