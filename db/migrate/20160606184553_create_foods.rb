class CreateFoods < ActiveRecord::Migration
  def change
  	create_table :foods do |t|
  		t.string :name
  		t.string :photo_url
  		t.string :style_location
  		t.string :meal_time
  		t.timestamps null:true
  	end
  end
end
