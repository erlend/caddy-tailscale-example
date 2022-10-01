#!/usr/bin/env ruby
require "sinatra"

get "/" do
  stream do |out|
    request.each_header do |raw_key, value|
      key = raw_key.split("_")[1..].map(&:capitalize).join("-")
      out << "#{key}: #{value}\n" if key.start_with?("X-Webauth")
    end
  end
end
