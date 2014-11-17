class CreateJingles < ActiveRecord::Migration
  def change
    create_table :jingles do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :hasLyrics
      t.boolean :isBought

      t.timestamps
    end
  end
end
