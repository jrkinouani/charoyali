class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :desc
      t.integer :price
      t.string :address_start
      t.string :address_end
      t.time :hour_start
      t.time :hour_end
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
