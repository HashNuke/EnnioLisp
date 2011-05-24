require './nodes.rb'
require './ennio.rb'

class EnnioRuntime

    def initialize
    end

    def parse(data, scope=nil)
        puts data
        parser = Ennio::SchemeParser.new
        scope ||= {:global=>{}, :local=>{}}
        ast = parser.parse data
        puts ast.class.name
        if ast.nil?
            puts parser.failure_reason
        end
    end
end
        

