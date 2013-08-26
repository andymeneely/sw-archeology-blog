module Jekyll
  class CSSTag < Liquid::Tag	
    def initialize(tag_name, css_file, tokens)
      super
      @css_file = css_file.strip
    end
    
    def render(context)
      "#{context.registers[:site].baseurl}/#{context.registers[:site].config['css_dir']}/#{@css_file}"
    end
  end
end

Liquid::Template.register_tag('css',Jekyll::CSSTag)
