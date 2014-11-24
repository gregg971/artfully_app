# This migration comes from artfully_ose_engine (originally 20130729140618)
class ConvertToCompany < ActiveRecord::Migration
  def change
    execute "update people set type='Company' where subtype in ('Business', 'Foundation', 'Government', 'Nonprofit')"
  end
end
