module Ennio

    
    class Program < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            elements.each do |e|
                puts e.class.name << "=> "
                e.node_eval(scope)
            end
        end
    end
   
    class LParen < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class RParen < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    class SExpression < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            elements.each do |e|
                puts e.class.name << " " << e.text_value.length.to_s << "=> " << e.text_value
            end
        end
    end

    module Operator
        class Operator < Treetop::Runtime::SyntaxNode
            def node_eval
                elements.each do |e|
                    puts e.text_value
                end
            end
        end
    end
    
    module ArithmeticOperator
        class ArithmeticOperator < Treetop::Runtime::SyntaxNode
            def node_eval
            end
        end
    end

    module LogicalOperator
        class LogicalOperator < Treetop::Runtime::SyntaxNode
            def node_eval
                text_value
            end
        end
    end

    module RelationalOperator
        class RelationalOperator < Treetop::Runtime::SyntaxNode
            def node_eval
                text_value
            end
        end
    end

    class DynamicWord < Treetop::Runtime::SyntaxNode
        def node_eval
        end
    end

    module Value
        class Value < Treetop::Runtime::SyntaxNode
            def node_eval
            end
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

