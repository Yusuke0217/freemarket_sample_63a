class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.integer  :user_id
      t.string   :name,            null: false
      t.string   :category
      t.integer  :size
      t.string   :condition,       null: false
      t.string   :shipping_charge, null: false
      t.string   :shipping_how
      t.string   :shipping_place,  null: false
      t.string  :shipping_date,   null: false
      t.integer  :price,           null: false
      t.string   :text,            null: false
      t.text     :image,           null: false
      t.integer  :status,          null: false, default: 1
      t.integer  :likes_count
    end
  end
end

