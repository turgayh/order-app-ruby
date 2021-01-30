class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :currency
      t.string :name_surname
      t.decimal :discount_price
      t.string :category

      t.timestamps
    end
  end
end
