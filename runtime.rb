require 'treetop'
require './nodes.rb'
require './ennio.rb'

class EnnioRuntime

    def initialize
        puts "=> initialized runtime"
    end

    def parse(data, scope=nil)
        puts data
        parser = Ennio::SchemeParser.new
        scope ||= {:global=>{}, :local=>{}}
        ast = parser.parse data
        if ast.nil?
            puts "FAILURE: "
            puts parser.failure_reason
        else
            ast.node_eval scope
        end
    end
end
        

