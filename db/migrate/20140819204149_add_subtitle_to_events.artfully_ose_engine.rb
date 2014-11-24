# This migration comes from artfully_ose_engine (originally 20140603200735)
class AddSubtitleToEvents < ActiveRecord::Migration
  def change
    add_column :events, :subtitle, :string
  end
end
