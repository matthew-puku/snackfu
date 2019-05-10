class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :quantity
      t.references :listing
      t.references :user

      t.timestamps
    end
  end
end
