class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.string   :name
      t.integer  :size
      t.string   :condition
      t.string   :shipping_charge
      t.string   :shipping_how
      t.string   :shipping_place
      t.integer  :shipping_date
      t.integer  :price
      t.string   :text
      t.text     :image
    end
  end
end

