class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.text :content
      t.string :address
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
