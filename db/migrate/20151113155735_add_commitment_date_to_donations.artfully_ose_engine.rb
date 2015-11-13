# This migration comes from artfully_ose_engine (originally 20140723134923)
class AddCommitmentDateToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :commitment_date, :datetime
    add_column :donations, :ack_sent_date, :datetime
  end
end
