# This migration comes from artfully_ose_engine (originally 20150325085516)
class AddReceivedAmountToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :received_amount, :integer, :default => 0

    ActiveRecord::Base.transaction do
      Order.joins('JOIN donations ON donations.order_id = orders.id').
          where('donations.pledge' => true).each do |order|
        Donation.where(:order_id => order.id).update_all("received_amount = #{order.children_donations_total}")
      end
    end
  end

  def self.down
    remove_column :donations, :received_amount
  end
end
