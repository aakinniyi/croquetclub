ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


    section h2 {"Recently Added Events"} do
        table_for Event.order("eventdate desc").limit(5) do
            column "Event Name", :eventname
            column "Event Date", :eventdate
            column "Event Price", :eventprice, :sortable => :eventprice do |event|
                div :class => "event" do
                    number_to_currency event.eventprice, :unit => "£ "
                end
            end
        end
        strong { link_to "View All Events", admin_events_path }
    end

    #this is for empty space betten the two section
    section h1 {" "} do
    end

    section h2 {"Recently Added Newsletters"} do
        table_for Newsletter.order("newsdate desc").limit(5) do
            column "Name", :name
            column "News Date", :newsdate
            column "News Document", :attachment
        end
        strong { link_to "View All Newsletters", admin_newsletters_path }
    end


    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
    
  end # content
end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
