config.gem 'icalendar', :version => '>=1.0.2'

config.to_prepare do
  ActionView::Template.register_template_handler(:icalendar, ActionView::TemplateHandlers::Icalendar)
end
