class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	t.belongs_to :user
    	t.string :name
    	t.string :url
    	t.integer :pages
      t.timestamps
    end
  end
end
