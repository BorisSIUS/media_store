class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
  def change
    add_reference :user, :cart, index: { unique: true }, foreign_key: true
  end
end
