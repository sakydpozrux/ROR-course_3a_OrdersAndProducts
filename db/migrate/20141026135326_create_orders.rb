class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :recipients_name
      t.text :shipping_address

      t.timestamps
    end
  end
end
