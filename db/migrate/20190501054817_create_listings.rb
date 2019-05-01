class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
        t.string :title
        t.decimal :price
        # t.string :description
        # t.string :url_image
        # t.string :user
        # t.integer :quantity
        # t.string :address
        # t.string :reviews
      t.timestamps
    end
  end
end
