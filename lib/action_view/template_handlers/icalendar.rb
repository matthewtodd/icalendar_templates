module ActionView
  module TemplateHandlers
    class Icalendar < TemplateHandler
      include Compilable

      def compile(template)
        "_set_controller_content_type(Mime::ICS);" +
        "cal ||= ::Icalendar::Calendar.new;" +
        template.source +
        ";cal.to_ical;"
      end
    end
  end
end
