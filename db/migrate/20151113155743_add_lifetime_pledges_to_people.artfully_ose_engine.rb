# This migration comes from artfully_ose_engine (originally 20141021134013)
class AddLifetimePledgesToPeople < ActiveRecord::Migration
  def change
    add_column :people, :lifetime_pledges, :integer, default: 0, :after => :lifetime_donations
  end
end
