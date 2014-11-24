# This migration comes from artfully_ose_engine (originally 20130823191625)
class AddPdfToOrders < ActiveRecord::Migration
  def change
    add_attachment :orders, :pdf
  end
end
