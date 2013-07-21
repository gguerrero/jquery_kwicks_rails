# Kwicks for RubyOnRails
A *Rails* plugin for having <b>Sexy Sliding Panels</b> on your application. 

## Installation
You can install this *gem* by

```
$ gem install jquery_kwicks_rails
```

Or bundle it on your app by adding this line at your *Gemfile*

```ruby
gem "jquery_kwicks_rails"
```
    

## Get Started
Add this to your *app/assets/javascripts/application.js* file

```
//= require kwicks
```

And this to your *app/assets/stylesheets/application.css* file

```
*= require kwicks
```

You're ready. All the *Kwicks* *JQuery* methods are available now.
See [here](http://devsmash.com/projects/kwicks/examples/horizontal) some usage examples.

## View Helpers
This *gem* adds some view helpers to your app so you can create the HTML that kwicks 
expect with easy.

#### Horizontal panels

```rhtml
<%= kwicks do %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
<% end %>
```


#### Horizontal panels with some content.

```rhtml
<%= kwicks do %>
  <%= kwicks_panel do %>
    <%= link_to image_tag('image01.png'), a_path %>
  <% end %>
  <%= kwicks_panel do %>
    <%= link_to image_tag('image02.png'), b_path %>
  <% end %>
  <%= kwicks_panel do %>
    <%= link_to image_tag('image03.png'), c_path %>
  <% end %>
<% end %>
```

#### Vertical panels

```rhtml
<%= kwicks(orientation: 'vertical') do %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
<% end %>
```

Or

```rhtml
<%= kwicks_vertical do %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
  <%= kwicks_panel %>
<% end %>
```


#### Multidimensional kwicks!

```rhtml
<%= kwicks(id: "the_kwicks", class: "kwicks-rows", orientation: "vertical") do %>
  <%= kwicks_panel do %>
    <%= kwicks(class: "kwicks-columns") do %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
    <% end %>
  <% end %>
  <%= kwicks_panel do %>
    <%= kwicks(class: "kwicks-columns") do %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
    <% end %>
  <% end %>
<% end %>
```

Where *styling* should look like:

```sass
.kwicks-rows {
  width: 910px;
  height: 555px;

  .kwicks-panel {
    width: 100%;

    /* overridden by kwicks but good for when JavaScript is disabled */
    height: 275px;
    margin-top: 5px;
  }
}

.kwicks-columns {
  width: 100%;
  height: 100%;

  .kwicks-panel {
    height: 100%;

    /* overridden by kwicks but good for when JavaScript is disabled */
    width: 300px;
    margin-left: 5px;
    float: left;

    background-color: #23a543;
  }
}
```

And the *CoffeeScript* should look like:

```coffeescript
$(document).ready ->
  $(".kwicks-rows").kwicks
    maxSize: 400
    behavior: 'menu'
    spacing: 5
    isVertical: true
$(".kwicks-columns").kwicks
  $(@columnsUl).kwicks
    maxSize: 600
    behavior: 'menu'
    spacing: 5
```


## The *Easing* Plugin
Go to [JQuery Easing site](http://gsgd.co.uk/sandbox/jquery/easing/) for more info about easing plugin.

## The *Kwicks* Project
Go to [Kwicks project site](http://devsmash.com/projects/kwicks) for more info and examples.
Navigate [GitHub Kwicks Project](https://github.com/jmar777/kwicks) for source code.

## License
This project uses [*MIT-LICENSE*](http://en.wikipedia.org/wiki/MIT_License).