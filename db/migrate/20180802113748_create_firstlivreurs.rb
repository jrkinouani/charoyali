class CreateFirstlivreurs < ActiveRecord::Migration[5.1]
  def change
    create_table :firstlivreurs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :delivery_days
      t.string :city
      t.string :transport
      t.string :usual_route

      t.timestamps
    end
  end
end
