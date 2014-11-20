ActiveAdmin.register Jingle do
permit_params :genre_id, :name, :description, :price, :hasLyrics, :isBought, :image

  index do
    column :name
    column :genre
    column :price do |jingle|
      number_to_currency jingle.price
    end
    column :description
    actions
  end
end
