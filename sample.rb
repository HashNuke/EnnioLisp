#! /usr/bin/env ruby

require "./runtime.rb"

program_data = ""
File.open "samples/hello.lp" do |file|
    file.each_line do |line|
        program_data = program_data << line
    end
end

ennio = Ennio::SchemeParser.new
puts program_data
ast = ennio.parse program_data
