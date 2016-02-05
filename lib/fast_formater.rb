#require "fast_formater/version"
require 'json'

module FastFormater
  class Formater

    def getJson(h)

      if @json_format != nil then return @json_format end

      formating(h, { json: true })
      @json_format
    end

    def getXml(h)

      if @xml_format != nil then return @xml_format end

      formating(h, { xml: true })
      @xml_format
    end

    private

      def formating(hasher ,params)
        @rb_hash = hasher

        if params[:json]
          @json_format = @rb_hash.to_json
        end

        if params[:xml]
          @xml_format = to_xml(@rb_hash)
        end
      end


      def to_xml(hasher)

        my_xml  = '<?xml version="1.0" encoding="UTF-8" ?>'

        if hasher[:title] == nil then hasher[:title] = 'unknown' end

        my_xml += "\n<#{hasher[:title]}>"

        hasher.each do |tag, content|
          my_xml += "\n   <#{tag}>#{content}</#{tag}>"
        end

      my_xml += "\n</#{hasher[:title]}>"  

        return my_xml
      end

  end
end
