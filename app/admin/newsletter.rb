ActiveAdmin.register Newsletter do

  index do
    column "Newsletter Name", :name
    column "Date", :newsdate
    column "Newsletter File", :attachment, :as => :file
    actions
end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Newsletter" do
      f.input :name
      f.input :newsdate
      f.input :attachment, :as => :file
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

  permit_params :name, :newsdate, :attachment

end
