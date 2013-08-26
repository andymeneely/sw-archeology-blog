module Jekyll
  class ImgTag < Liquid::Tag	
    def initialize(tag_name, img_file, tokens)
      super
      @img_file = img_file.strip
    end
    
    def render(context)
      "#{context.registers[:site].baseurl}/#{context.registers[:site].config['img_dir']}/#{@img_file}"
    end
  end
end

Liquid::Template.register_tag('img',Jekyll::ImgTag)
