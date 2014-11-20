class AddImageToJingles < ActiveRecord::Migration
  def change
    add_column :jingles, :image, :string
  end
end
