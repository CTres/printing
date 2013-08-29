class ChangeJobAddress < ActiveRecord::Migration
  def change
  	rename_column :job_addresses, :addresses_id, :address_id
  end
end
