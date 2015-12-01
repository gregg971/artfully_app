# This migration comes from artfully_ose_engine (originally 20140828174357)
class AddTypeToChart < ActiveRecord::Migration
  def change
    add_column :charts, :type, :string
    Chart.update_all(:type => "GeneralAdmissionChart")
  end

end
