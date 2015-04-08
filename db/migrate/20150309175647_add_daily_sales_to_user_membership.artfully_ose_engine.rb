# This migration comes from artfully_ose_engine (originally 20150223145657)
class AddDailySalesToUserMembership < ActiveRecord::Migration
  def change
    add_column :user_memberships, :receive_daily_sales_report, :boolean, :default => false
    UserMembership.where(:organization_administrator => true).update_all(:receive_daily_sales_report => true)

    UserMembership.joins(:organization)
                  .where(:organization_administrator => true)
                  .where("#{Organization.table_name}.`receive_daily_sales_report` = 1")
                  .update_all("#{UserMembership.table_name}.receive_daily_sales_report = 1")

    remove_column :organizations, :receive_daily_sales_report
  end
end
