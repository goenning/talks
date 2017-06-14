module Jekyll
  class EmbedVideoTag < Liquid::Tag

    def initialize(tag_name, url, tokens)
      super
      @url = url
    end

    def render(context)
      video_url = Liquid::Template.parse(@url).render(context)
      video_url.gsub! "/watch?v=", "/embed/"
      video_url.strip!
      %|<iframe class="embed-video" src="#{video_url}?showinfo=0" frameborder="0"  allowfullscreen></iframe>|
    end
  end
end

Liquid::Template.register_tag('embed_video', Jekyll::EmbedVideoTag)