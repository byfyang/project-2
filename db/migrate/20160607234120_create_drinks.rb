class CreateDrinks < ActiveRecord::Migration
  def change
  	create_table :drinks do |t|
	t.string :name
	t.string :photo_url
	t.string :style
	t.timestamps null:true
	end
  end
end
