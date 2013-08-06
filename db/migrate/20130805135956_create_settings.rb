class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
    	t.belongs_to :item
    	t.string   :description
    	t.string   :paper
    	t.float    :width
    	t.float    :length
    	t.boolean  :color
    	t.string   :notes
      t.timestamps
    end
  end
end
