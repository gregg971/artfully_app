# This migration comes from artfully_ose_engine (originally 20130723182811)
class AddCachedSlugToOrganizations < ActiveRecord::Migration
  
  def self.up
    add_column :organizations, :cached_slug, :string
    add_index  :organizations, :cached_slug

    Organization.find_each do |org|
      org.save(:validate => false)
    end
  end

  def self.down
    remove_column :organizations, :cached_slug
  end
  
end
