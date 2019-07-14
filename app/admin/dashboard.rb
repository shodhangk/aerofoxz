ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
  
    #Here is an example of a simple dashboard with columns and panels.
    
    columns do
      column do
        panel "Recently added Airplanes" do
          ul do
            Aeroplane.last(5).map do |aeroplane|
              para aeroplane.name
            end
          end
        end
      end

      column do
        panel "Do you want add more stuffs?" do
          li link_to('Go to dashboard', admin_welcome_index_path)
        end
      end
    end
  end # content
end
