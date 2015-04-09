# Title: Apache JIRA Link
# Author: Karl-Heinz Marbaise 
module Jekyll
  class ApacheJiraLink < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<mp>\S+\/?\d?)/ =~ markup
        @mp = mp
      end
    end

    def render(context)
      "<a href='https://issues.apache.org/jira/browse/#{@mp}'>#{@mp}</a>"
    end
  end
end

Liquid::Template.register_tag('ajl', Jekyll::ApacheJiraLink)
