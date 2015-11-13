# This migration comes from artfully_ose_engine (originally 20150406162656)
class IndexTicketsOnActionId < ActiveRecord::Migration
  def change
    add_index :tickets, :validated_action_id
  end
end
