class AddToAdrToJobs < ActiveRecord::Migration
  def change
  	add_column :addresses, :job_id, :integer
  end
end
