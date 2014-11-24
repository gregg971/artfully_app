# This migration comes from artfully_ose_engine (originally 20140128213101)
class AddPdfToMembers < ActiveRecord::Migration
  def change
    add_attachment :members, :pdf
  end
end
