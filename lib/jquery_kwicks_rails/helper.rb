module JqueryKwicksRails
  module ViewHelpers
    def kwicks(opts = {})
      orientation = opts.delete(:orientation)
      orientation = (orientation == "vertical") ? "vertical" : "horizontal"

      opts[:class] = "#{opts[:class]} kwicks kwicks-#{orientation}".strip
      content_tag(:ul, opts) { yield }
    end

    def kwicks_horizontal(opts = {}, &block)
      kwicks(opts.merge(orientation: "horizontal"), &block)
    end

    def kwicks_vertical(opts = {}, &block)
      kwicks(opts.merge(orientation: "vertical"), &block)
    end

    def kwicks_panel(opts = {})
      opts[:class] = "#{opts[:class]} kwicks-panel".strip

      (block_given?) ? content_tag(:li, opts) {yield} 
                     : content_tag(:li, nil, opts)
    end
  end
end