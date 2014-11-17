class AddGenreRefToJingles < ActiveRecord::Migration
  def change
    add_reference :jingles, :genre, index: true
  end
end
