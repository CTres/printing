class JobAddresses < ActiveRecord::Migration
  def up
  	create_table :job_addresses do |t|
      t.references :job
      t.references :address
      t.datetime :created_at
    end
	end
end
