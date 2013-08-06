class CreatePackagings < ActiveRecord::Migration
  def change
    create_table :packagings do |t|
    	t.belongs_to :item
    	t.string 	 :name
    	t.string 	 :description
      t.timestamps
    end
  end
end
