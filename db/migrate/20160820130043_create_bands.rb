class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|

    	t.string :name
    	t.text :members
    	t.string :song1
    	t.string :song2
    	t.string :song3

      t.timestamps
    end
  end
end
