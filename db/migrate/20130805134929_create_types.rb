class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
    	t.belongs_to :packaging
      t.timestamps
    end
  end
end
