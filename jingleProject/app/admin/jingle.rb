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

  form :html => {:enctype => 'multipart/form-data'} do |f|
    f.inputs "Details" do
      f.input :name
      f.input :genre
      f.input :description
      f.input :price
      f.input :hasLyrics
      f.input :isBought
      f.input :image
      f.input :sale
    end
    f.actions
  end
end
