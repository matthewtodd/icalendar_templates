module ActionView
  module TemplateHandlers
    class Icalendar < TemplateHandler
      include Compilable

      def self.line_offset
        2
      end

      def compile(template)
        content_type_handler = (@view.send!(:controller).respond_to?(:response) ? "controller.response" : "controller")
        "#{content_type_handler}.content_type ||= Mime::ICS\n" +
        "cal ||= ::Icalendar::Calendar.new\n" +
        template.source +
        "\ncal.to_ical\n"
      end
    end
  end
end
