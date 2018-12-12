class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :model
      t.string :imei
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :payment_installments

      t.timestamps
    end
  end
end
