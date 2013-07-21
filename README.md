# Kwicks for RubyOnRails
A *Rails* plugin for having <b>Sexy Sliding Panels</b> on your application. 

## Installation
You can install this *gem* by

    $ gem install jquery_kwicks_rails

Or bundle it on your app by adding this line at your *Gemfile*

    gem "jquery_kwicks_rails"
    

## Get Started
Add this to your *app/assets/javascripts/application.js* file

    //= require kwicks

And this to your *app/assets/stylesheets/application.css* file

    *= require kwicks

You're ready. All the *Kwicks* *JQuery* methods are available now.
See [here](http://devsmash.com/projects/kwicks/examples/horizontal) some usage examples.

## View Helpers
This *gem* adds some view helpers to your app so you can create a the HTML that kwicks expect with easy.

For example, create a basic *kwicks* with three horizontal panels:

**kwicks_horizontal_example.html.erb**

    <%= kwicks do %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
    <% end %>

Add some images at the kwicks panel elements:

**kwicks_content_example.html.erb**

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

Creating a vertical kwicks:

**kwicks_vertical_example.html.erb**

    <%= kwicks(orientation: 'vertical') do %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
    <% end %>

Or

**kwicks_vertical_example.html.erb**

    <%= kwicks_vertical do %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
      <%= kwicks_panel %>
    <% end %>

Make multidimensional kwicks:

**kwicks_multidimensional_example.html.erb**

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

The styling for this multidimensional kwicks should look like:

    .kwicks-rows {
      width: 910px;
      height: 555px;

      li {
        width: 100%;

        /* overridden by kwicks but good for when JavaScript is disabled */
        height: 275px;
        margin-top: 5px;
      }
    }

    .kwicks-columns {
      width: 100%;
      height: 100%;

      li {
        height: 100%;

        /* overridden by kwicks but good for when JavaScript is disabled */
        width: 300px;
        margin-left: 5px;
        float: left;

        background-color: #141414;
        opacity: 0.95; 
      }
    }


## The *Easing* Plugin
Go to [JQuery Easing site](http://gsgd.co.uk/sandbox/jquery/easing/) for more info about easing plugin.

## The *Kwicks* Project
Go to [Kwicks project site](http://devsmash.com/projects/kwicks) for more info and examples.
Navigate [GitHub Kwicks Project](https://github.com/jmar777/kwicks) for source code.

## License
This project uses [*MIT-LICENSE*](http://en.wikipedia.org/wiki/MIT_License).