# Title: maven-plugin 
# Author: Karl-Heinz Marbaise 
module Jekyll
  class MavenPluginLink < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<mp>\S+\/?\d?)/ =~ markup
        @mp = mp
      end
    end

    def render(context)
      "<a href='https://maven.apache.org/plugins/#{@mp}'>#{@mp}</a>"
    end
  end
end

Liquid::Template.register_tag('mp', Jekyll::MavenPluginLink)
