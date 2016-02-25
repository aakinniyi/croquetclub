ActiveAdmin.register Booklawn do


  permit_params :starttime, :endtime, :lawnname, :availability


  form do |f|
    f.inputs "New Lawn Bookings" do
      f.input :starttime
      f.input :endtime
      f.input :lawnname, as: :select, collection: ["Centre Lawn", "Lawn No. 1", "Lawn No. 2", "West Lawn", "East Lawn"] #Lawnground.select(:name) 
      f.input :availability, as: :select, collection: ["Available", "Booked"]
    f.actions
  end
  end
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



end
