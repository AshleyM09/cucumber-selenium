require 'watir'
require 'page-object'
require 'webdrivers'
require 'pry'

Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end