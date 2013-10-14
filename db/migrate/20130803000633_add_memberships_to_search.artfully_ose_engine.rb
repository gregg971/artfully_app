# This migration comes from artfully_ose_engine (originally 20130802235709)
class AddMembershipsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :membership_type_id, :integer
    add_column :searches, :membership_status, :string
    add_column :searches, :membership_starts_at, :datetime
    add_column :searches, :membership_ends_at, :datetime
    add_column :searches, :year, :integer
  end
end
