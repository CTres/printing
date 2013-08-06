class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.belongs_to :user
      t.string 		:name
    	t.string 		:email
    	t.string		:phone
    	t.string		:address_line1
    	t.string		:address_line2
    	t.string		:address_city
    	t.string		:address_zip
    	t.string		:address_state
    	t.string		:address_country
      t.timestamps
    end
  end
end
