module ApplicationHelper
  def menu_and_title
    content_tag(:header, class: 'bg-dark text-white text-center py-5') do
      content_tag(:div, class: 'container') do
        content_tag(:div, class: 'row align-items-left') do
          concat(content_tag(:div, class: 'col-lg-6 text-lg-start') do
            content_tag(:h1, 'Cristian Zaninovic', class: 'site-title text-white')
          end)
          concat(content_tag(:div, class: 'col-lg-6 text-lg-end') do
            content_tag(:nav, class: 'navbar navbar-expand navbar-dark bg-dark') do
              content_tag(:div, class: 'navbar-nav ml-auto') do
                concat(link_to('Inicio', root_path, class: 'nav-link'))
                concat(link_to('Proyectos', projects_path, class: 'nav-link'))
                concat(link_to('Contacto', contact_path, class: 'nav-link'))
              end
            end
          end)
        end
      end
    end
  end
  
  
end