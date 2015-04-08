# This migration comes from artfully_ose_engine (originally 20141204164400)
class AddMoreIndexesToActions < ActiveRecord::Migration
  def change
    add_index :actions, :subject_id
    add_index :actions, :subject_type
    add_index :actions, :type
  end
end
