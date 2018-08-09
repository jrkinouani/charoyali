class AddCitystartToFirstlivreurs < ActiveRecord::Migration[5.1]
  def change
    add_column :firstlivreurs, :citystart, :string
  end
end
