# This migration comes from artfully_ose_engine (originally 20140521195853)
class AddDeletedAtToPassType < ActiveRecord::Migration
  def change
    add_column :pass_types,    :deleted_at, :datetime
  end
end
