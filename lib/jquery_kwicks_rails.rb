require 'jquery_kwicks_rails/version'
require 'jquery_kwicks_rails/engine'
require 'jquery_kwicks_rails/helper'

ActionView::Base.send(:include, JqueryKwicksRails::ViewHelpers)