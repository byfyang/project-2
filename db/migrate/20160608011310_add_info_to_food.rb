class AddInfoToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :info, :string
  end
end
