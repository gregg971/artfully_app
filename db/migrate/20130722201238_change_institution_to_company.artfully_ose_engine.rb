# This migration comes from artfully_ose_engine (originally 20130607180250)
class ChangeInstitutionToCompany < ActiveRecord::Migration
  def up
    execute "UPDATE people SET type='Company' where type='Institution'"
  end

  def down
    execute "UPDATE people SET type='Institution' where type='Company'"
  end
end
