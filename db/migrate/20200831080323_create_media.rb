class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :url

      t.timestamps
    end
  end
end
