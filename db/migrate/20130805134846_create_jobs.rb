class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.belongs_to :user
    	t.string 	:name
    	t.float 	:price
    	t.integer :quantity
    	t.string 	:status
    	t.string 	:tracking
      t.timestamps
    end
  end
end
