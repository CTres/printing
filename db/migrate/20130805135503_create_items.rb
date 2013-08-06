class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.belongs_to :user
    	t.belongs_to :job
    	t.integer :double_sided
    	t.integer :quantity
    	t.string :name
      t.timestamps
    end
  end
end
