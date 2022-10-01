#!/usr/bin/env ruby
require "sinatra"

get "/" do
  new_line = request.env["HTTP_ACCEPT"].include?("text/html") ? "<br>" : "\n"
  stream do |out|
    request.each_header do |raw_key, value|
      key = raw_key.split("_")[1..].map(&:capitalize).join("-")
      out << "#{key}: #{value}#{new_line}" if key.start_with?("X-Webauth")
    end
  end
end
