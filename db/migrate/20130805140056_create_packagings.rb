class CreatePackaging < ActiveRecord::Migration
  def change
    create_table :packaging do |t|
    	belongs_to item
    	t.string :name
    	t.string :description
      t.timestamps
    end
  end
end
