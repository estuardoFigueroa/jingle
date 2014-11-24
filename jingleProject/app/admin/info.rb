ActiveAdmin.register Info do
permit_params :title, :content, :address, :telephone, :email, :image

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form :html => {:enctype => 'multipart/form-data'} do |f|
    f.inputs "Details" do
      f.input :title
      f.input :content
      f.input :address
      f.input :telephone
      f.input :email
      f.input :image
    end
    f.actions
  end
end
