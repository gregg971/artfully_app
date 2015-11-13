# This migration comes from artfully_ose_engine (originally 20141031193839)
class UpdateRelations < ActiveRecord::Migration
  def change
    execute "UPDATE relations SET description = 'friend of' WHERE description = 'friend';"
    execute "UPDATE relations SET description = 'relative of' WHERE description = 'relative';"
    execute "UPDATE relations SET description = 'colleague of' WHERE description = 'colleague';"
    execute "UPDATE relations SET other_can_be_company = true WHERE description = 'employs';"
    execute "UPDATE relations SET person_can_be_company = true WHERE description = 'employed by';"
  end
end
