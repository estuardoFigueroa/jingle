ActiveAdmin.register Jingle do
permit_params :genre_id, :name, :description, :price, :hasLyrics, :isBought, :image, :sale

  index do
    column :name
    column :genre
    column :description
    column :price do |jingle|
      number_to_currency jingle.price
    end
    actions
  end
end
