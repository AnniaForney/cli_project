require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "./cli_project/version"



module CliProject
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './cli'
require_relative './crystal'
require_relative './scraper'