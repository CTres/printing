class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	has_many :jobs
    	has_many :items
    	
      t.timestamps
    end
  end
end
