require 'liquid'

module Jekyll
  module JekyllHandlebars

    class HandlebarsTemplate < Jekyll::StaticFile
      def initialize(site, base, name)
        @site = site
        @base = base
        @name = name
        @dir = '/assets/templates'
        @src = File.join(base, '_assets/templates/', name)
      end

      def destination(dest)
        js_ext = '.js'
        dest_name = @name.gsub(/\.template/, js_ext)
        File.join(dest, @dir, dest_name)
      end

      def write(dest)
        dest_path = destination(dest)
        FileUtils.mkdir_p(File.dirname(dest_path))
        `handlebars #{@src} -f #{dest_path}`

        true
      end
    end

    class HandlebarsTemplateCompiler < Generator
      def generate(site)
        Dir.glob(File.join(site.source, '_assets/templates', "*.template")) do |template|
          site.static_files << HandlebarsTemplate.new(site, site.source, File.basename(template))
        end
      end
    end
  end

  module HandlebarsTags
    class Template < Liquid::Tag
      def render context
        "<script src=\"/assets/templates/#{context}.js\"></script>"
      end
    end
  end
end

Liquid::Template.register_tag "template", Jekyll::HandlebarsTags::Template
