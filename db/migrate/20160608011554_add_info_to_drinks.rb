class AddInfoToDrinks < ActiveRecord::Migration
  def change
  	add_column :drinks, :info, :string
  end
end
