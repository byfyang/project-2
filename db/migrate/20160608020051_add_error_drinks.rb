class AddErrorDrinks < ActiveRecord::Migration
  def change
  	add_column :drinks, :error, :string
  end
end
