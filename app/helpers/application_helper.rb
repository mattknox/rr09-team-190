module ApplicationHelper
  def embed_video(video)
    <<-HTML
      <script type="text/javascript">
        var params = { allowScriptAccess: "always" };
        var atts = { id: "tv" };
        swfobject.embedSWF("#{video.embed_url}&amp;border=0&amp;enablejsapi=1&amp;playerapiid=ytplayer", 
                           "psplayer", "425", "344", "8", null, null, params, atts);

      </script>
    HTML
  end

  def video_thumbnail(video)
    if video.thumbnails.empty?
      video.title
    else
      image_tag(video.thumbnails.first.url, :title => video.title )
    end
  end
end
