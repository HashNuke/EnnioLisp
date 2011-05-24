#! /usr/bin/env ruby

require "treetop"
require "./ennio.rb"
require "./nodes.rb"

program_data = ""
File.open "samples/hello.lp" do |file|
    file.each_line do |line|
        program_data = program_data << line
    end
end

ennio = Ennio::SchemeParser.new
puts program_data
ast = ennio.parse program_data
if ast.nil?
    puts "FAILURE: "
    puts ennio.failure_reason
    puts ennio.failure_line
    puts ennio.failure_column
else
    puts "SUCCESS!"
end

