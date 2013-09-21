# Title: CodeHaus JIRA Link
# Author: Karl-Heinz Marbaise 
module Jekyll
  class CodeHausJiraLink < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<mp>\S+\/?\d?)/ =~ markup
        @mp = mp
      end
    end

    def render(context)
      "<a href='http://jira.codehaus.org/browse/#{@mp}'>#{@mp}</a>"
    end
  end
end

Liquid::Template.register_tag('chjl', Jekyll::CodeHausJiraLink)
