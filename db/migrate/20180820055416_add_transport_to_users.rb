class AddTransportToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :transport, :string
    add_column :users, :string, :string
  end
end
