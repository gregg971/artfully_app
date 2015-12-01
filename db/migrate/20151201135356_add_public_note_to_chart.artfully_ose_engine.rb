# This migration comes from artfully_ose_engine (originally 20140930224543)
class AddPublicNoteToChart < ActiveRecord::Migration
  def change
    add_column :charts, :public_note, :string
  end
end
