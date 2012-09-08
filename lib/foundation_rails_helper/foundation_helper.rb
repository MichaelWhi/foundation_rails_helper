module FoundationRailsHelper
  module FoundationHelper
    def icon_tag(icon, options = {}, set = "")
      klass = ["#{set.to_s} foundicon-#{icon.to_s}"]
      klass << options.delete(:class)
      klass = klass.join( ' ' )
      options = options.merge({:class => klass})

      content_tag(:i, nil,  options) + " "
    end
    
    def badge_tag(text, options={})
      klass = ["round label"]
      klass << options.delete(:class)
      klass = klass.join( ' ' )
      options = options.merge({:class => klass})

      content_tag(:span, text,  options) + " "
    end
    
    def info_tag(text, options = {})
      klass = ["radius label"]
      klass << options.delete(:class)
      klass = klass.join( ' ' )
      options = options.merge({:class => klass})

      content_tag(:span, text,  options) + " "
    end
  end
end