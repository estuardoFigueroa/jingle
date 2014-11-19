class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate

      t.timestamps
    end
  end
end
