class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.integer  :user_id
      t.string   :name,            null:false
      t.integer  :size,            null:true
      t.string   :condition,       null:false
      t.string   :shipping_charge, null:false
      t.string   :shipping_how,    null:false
      t.string   :shipping_place,  null:false
      t.integer  :shipping_date,   null:false
      t.integer  :price,           null:false
      t.string   :text
      t.text     :image
    end
  end
end

