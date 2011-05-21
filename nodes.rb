module Ennio

    class Program < Treetop::Runtime::SyntaxNode
        def node_value
        end
    end
    
    class SExpression < Treetop::Runtime::SyntaxNode
        def node_value
        end
    end

    class Operator < Treetop::Runtime::SyntaxNode
        def node_value
            node_value
        end
    end

    class ArithmeticOperator < Treetop::Runtime::SyntaxNode
        def node_value
        end
    end

    class LogicalOperator < Treetop::Runtime::SyntaxNode
        def node_value
            text_value
        end
    end

    class RelationalOperator < Treetop::Runtime::SyntaxNode
        def node_value
            text_value
        end
    end

    class Value < Treetop::Runtime::SyntaxNode
        def node_value
            node_value
        end
    end

    class NilNode < Treetop::Runtime::SyntaxNode
        def node_value
            nil
        end
    end

    class IntegerNode < Treetop::Runtime::SyntaxNode
        def node_value
            text_value.to_i
        end
    end

    class FloatNode < Treetop::Runtime::SyntaxNode
        def node_value
            text_value.to_f
        end
    end
    
    class DoubleQuotedString < Treetop::Runtime::SyntaxNode
        def node_value
            Kernel.eval(text_value)
        end
    end

    class SingleQuoteedString < Treetop::Runtime::SyntaxNode
        def node_value
            Kernel.eval(text_value)
        end
    end

    class List < Treetop::Runtime::SyntaxNode
        def node_value
        end
    end

    class Space < Treetop::Runtime::SyntaxNode
        def node_value
        end
    end
end

