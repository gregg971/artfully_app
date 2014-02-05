# This migration comes from artfully_ose_engine (originally 20140128223948)
class AddQrCodeToMember < ActiveRecord::Migration
  def up
    add_attachment :members, :qr_code
  end

  def down
    remove_attachment :members, :qr_code
  end
end
