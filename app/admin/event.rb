 ActiveAdmin.register Event do

  permit_params :eventname, :eventdescription, :eventdate, :eventprice, :eventimage

  index do
    column "Event Name", :eventname
    column "Event Description", :eventdescription
    column "Event Date", :eventdate
    column "Event Price", :eventprice, :sortable => :eventprice do |event|
      div :class => "event" do
        number_to_currency event.eventprice, :unit => "£ "
      end
    end
    actions
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
