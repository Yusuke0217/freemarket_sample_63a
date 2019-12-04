class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.string   :name,            null: false
      t.string   :category
      t.integer  :size
      t.string   :condition,       null: false
      t.string   :shipping_charge, null: false
      t.string   :shipping_how
      t.string   :shipping_place,  null: false
      t.integer  :shipping_date,   null: false
      t.integer  :price,           null: false
      t.string   :text,            null: false
      t.text     :image,           null: false
    end
  end
end

