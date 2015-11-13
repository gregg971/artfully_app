# This migration comes from artfully_ose_engine (originally 20141210162329)
class AddBouncedToSubscribedLists < ActiveRecord::Migration
  def change
    add_column :subscribed_lists, :bounced, :boolean, :default => false
  end
end
