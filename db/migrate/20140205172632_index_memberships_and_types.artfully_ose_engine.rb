# This migration comes from artfully_ose_engine (originally 20140125183606)
class IndexMembershipsAndTypes < ActiveRecord::Migration
  def change
    add_index :membership_types,  :organization_id
    add_index :memberships,       :membership_type_id
  end
end
