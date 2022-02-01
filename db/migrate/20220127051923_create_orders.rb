class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :card_number
      t.string :payment_type

      t.timestamps
    end
  end
end

