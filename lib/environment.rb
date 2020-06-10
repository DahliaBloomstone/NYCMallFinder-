require 'pry'
require 'nokogiri'
require 'open-uri'
require 'tty-prompt'

require_relative './version'
require_relative './cli'
require_relative './mall'
require_relative './scraper'


module NYCMallFinder
    class Error < StandardError; end
    # Your code goes here...
end