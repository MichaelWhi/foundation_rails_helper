def icon_tag(icon, options = {})
  klass = ["foundicon-#{icon.to_s}"]
  klass << options.delete(:class)
  klass = klass.join( ' ' )
  options = options.merge({:class => klass})

  content_tag(:i, nil,  options) + " "
end