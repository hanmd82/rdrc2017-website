module ApplicationHelper
  def meta_tags_template(title, description, fb_type, tw_type, image)
    {
      title:       title,
      description: description,
      og:
                   {
                     title:       title,
                     description: description,
                     type:        fb_type,
                     url:         request.original_url,
                     image:       image
                   },
      twitter:
                   {
                     card:        tw_type,
                     site:        "@reddotrubyconf",
                     title:       title,
                     description: description,
                     image:       image
                   }
    }
  end

  def default_meta_tags
    meta_tags_template(
      "RedDotRubyConf 2017",
      "The largest Ruby conference in South East Asia is happening on 22 and 23 June 2017.",
      "website",
      "summary_large_image",
      image_url("social-media-#{[1,2].sample}.jpg")
    )
  end
end
