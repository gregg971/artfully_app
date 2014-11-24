# This migration comes from artfully_ose_engine (originally 20130723212712)
class AddQrCodeToTickets < ActiveRecord::Migration
  def up
    add_attachment :tickets, :qr_code
  end

  def down
    remove_attachment :tickets, :qr_code
  end
end
