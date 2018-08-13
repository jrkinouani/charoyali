class AddCityDepartToFirstlivreurs < ActiveRecord::Migration[5.1]
  def change
    add_column :firstlivreurs, :city_depart, :string
  end
end
