class CreateStockists < ActiveRecord::Migration
  def change
    create_table :stockists do |t|
      t.string :name
      t.string :link
      t.string :region
      t.string :locations

      t.timestamps
    end
  end
end
