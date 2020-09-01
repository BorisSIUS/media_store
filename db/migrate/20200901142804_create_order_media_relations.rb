class CreateOrderMediaRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :order_media_relations do |t|
      t.belongs_to :order, index: true
      t.belongs_to :media, index: true

      t.timestamps
    end
  end
end
