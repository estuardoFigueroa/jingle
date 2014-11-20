ActiveAdmin.register Province do

  permit_params :name, :pst, :gst, :hst

  index do 
      column :name
      column :pst do |province|
        number_to_percentage(province.pst * 100, precision: 1)
      end
      column :gst do |province|
        number_to_percentage(province.gst * 100, precision: 1)
      end
      column :hst do |province|
        number_to_percentage(province.hst * 100, precision: 1)
      end
      actions
  end
end
