class CreateAddings < ActiveRecord::Migration[5.2]
  def change
    create_table :addings do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :media, index: true
      t.timestamps
    end
  end
end
