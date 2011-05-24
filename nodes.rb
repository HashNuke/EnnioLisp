module Ennio

    class Program < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            puts text_value
            elements.each do |e|
                puts e.class.name 
            end
        end
    end
    
    class SExpression < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class Operator < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class ArithmeticOperator < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class LogicalOperator < Treetop::Runtime::SyntaxNode
        def node_eval
            text_value
        end
    end

    class RelationalOperator < Treetop::Runtime::SyntaxNode
        def node_eval
            text_value
        end
    end

    class Value < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class NilNode < Treetop::Runtime::SyntaxNode
        def node_eval
            nil
        end
    end

    class IntegerNode < Treetop::Runtime::SyntaxNode
        def node_eval
            text_value.to_i
        end
    end

    class FloatNode < Treetop::Runtime::SyntaxNode
        def node_eval
            text_value.to_f
        end
    end
    
    class DoubleQuotedString < Treetop::Runtime::SyntaxNode
        def node_eval
            Kernel.eval(text_value)
        end
    end

    class SingleQuoteedString < Treetop::Runtime::SyntaxNode
        def node_eval
            Kernel.eval(text_value)
        end
    end

    class List < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class Space < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end
end

