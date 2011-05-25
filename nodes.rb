module Ennio

   
    class Treetop::Runtime::SyntaxNode
        def node_eval(scope)
        end
    end

    class Program < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            elements.each do |e|
                puts e.class.name << "=> "
                e.node_eval(scope)
            end
        end
    end
   
    class LParen < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
        end
    end

    class RParen < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
        end
    end

    class SExpression < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            # node[3] contains the list of elements and node[3][0] contains the operand
            operator = elements[3].elements[0]

            # node[3][2] contains the list of operands
            operand_list = elements[3].elements[2]


            puts "OPLIST: " << operand_list.text_value
            

            if operator.kind_of? Ennio::DynamicWord
                # OP is a dynamicword. Check keywords and then later the scope hash
            end

            if operand_list.elements.empty?
                #TODO there's no operand, just call the method
            end
        end
    end

    module Operator
        class Operator < Treetop::Runtime::SyntaxNode
            def node_eval
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
        def node_eval(scope)
        end
    end

    module Value
        class Value < Treetop::Runtime::SyntaxNode
            def node_eval(scope)
            end
        end
    end

    class NilNode < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            nil
        end
    end

    class IntegerNode < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
            text_value.to_i
        end
    end

    class FloatNode < Treetop::Runtime::SyntaxNode
        def node_eval(scope)
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
        def node_eval(scope)
        end
    end
end

