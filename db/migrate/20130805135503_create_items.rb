class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	belongs_to :user
    	has_and_belongs_to_many :jobs
    	has_one :packaging
 			has_one :setting
    	t.integer :double_sided
    	t.integer :quantity
    	t.string :name
      t.timestamps
    end
  end
end
