module Filter
  class ActionFieldBuilder < Filter::BaseFieldBuilder

    def render object_class, attribute_name, options = {}
      if options[:detached_form]
        haml_tag :a, 'Search', class: 'btn btn-primary btn-sm detached-search'
      else
        haml_tag :div, class: 'actions' do
          haml_tag :button, 'Search', class: 'btn btn-primary btn-sm search'
          haml_tag :button, 'Clear', class: 'btn btn-link btn-sm clear'
        end
      end
    end

  end
end