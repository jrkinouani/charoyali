class AddCityArrivalToFirstlivreurs < ActiveRecord::Migration[5.1]
  def change
    add_column :firstlivreurs, :city_arrival, :string
  end
end
