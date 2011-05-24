require './nodes.rb'
require './ennio.rb'

class EnnioRuntime

    def initialize
    end

    def parse(data, scope=nil)
        puts data
        scheme = Ennio::SchemeParser.new
        scope ||= {:global=>{}, :local=>{}}
        ast = scheme.parse data
        puts ast.class.name
    end
end
        

