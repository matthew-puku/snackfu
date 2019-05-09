class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.text :address
      t.string :country
      t.references :listing
      t.references :order
      t.references :user

      t.timestamps
    end
  end
end
