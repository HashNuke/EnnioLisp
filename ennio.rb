# Autogenerated from a Treetop grammar. Edits may be lost.


module Ennio
    module Scheme
      include Treetop::Runtime

      def root
        @root ||= :program
      end

      def _nt_program
        start_index = index
        if node_cache[:program].has_key?(index)
          cached = node_cache[:program][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        s0, i0 = [], index
        loop do
          r1 = _nt_s_expression
          if r1
            s0 << r1
          else
            break
          end
        end
        r0 = instantiate_node(Program,input, i0...index, s0)

        node_cache[:program][start_index] = r0

        r0
      end

      module SExpression0
        def operator
          elements[0]
        end

      end

      module SExpression1
        def space1
          elements[0]
        end

        def space2
          elements[2]
        end

        def space3
          elements[4]
        end

        def space4
          elements[6]
        end
      end

      def _nt_s_expression
        start_index = index
        if node_cache[:s_expression].has_key?(index)
          cached = node_cache[:s_expression][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0, s0 = index, []
        r1 = _nt_space
        s0 << r1
        if r1
          if has_terminal?('(', false, index)
            r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure('(')
            r2 = nil
          end
          s0 << r2
          if r2
            r3 = _nt_space
            s0 << r3
            if r3
              i4, s4 = index, []
              r5 = _nt_operator
              s4 << r5
              if r5
                s6, i6 = [], index
                loop do
                  r7 = _nt_value
                  if r7
                    s6 << r7
                  else
                    break
                  end
                end
                r6 = instantiate_node(SyntaxNode,input, i6...index, s6)
                s4 << r6
              end
              if s4.last
                r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
                r4.extend(SExpression0)
              else
                @index = i4
                r4 = nil
              end
              s0 << r4
              if r4
                r8 = _nt_space
                s0 << r8
                if r8
                  if has_terminal?(')', false, index)
                    r9 = instantiate_node(SyntaxNode,input, index...(index + 1))
                    @index += 1
                  else
                    terminal_parse_failure(')')
                    r9 = nil
                  end
                  s0 << r9
                  if r9
                    r10 = _nt_space
                    s0 << r10
                  end
                end
              end
            end
          end
        end
        if s0.last
          r0 = instantiate_node(SExpression,input, i0...index, s0)
          r0.extend(SExpression1)
        else
          @index = i0
          r0 = nil
        end

        node_cache[:s_expression][start_index] = r0

        r0
      end

      def _nt_operator
        start_index = index
        if node_cache[:operator].has_key?(index)
          cached = node_cache[:operator][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        r1 = _nt_arithmetic_operator
        if r1
          r0 = r1
          r0.extend(Operator)
        else
          r2 = _nt_relational_operator
          if r2
            r0 = r2
            r0.extend(Operator)
          else
            r3 = _nt_logical_operator
            if r3
              r0 = r3
              r0.extend(Operator)
            else
              r4 = _nt_dynamic_word
              if r4
                r0 = r4
                r0.extend(Operator)
              else
                @index = i0
                r0 = nil
              end
            end
          end
        end

        node_cache[:operator][start_index] = r0

        r0
      end

      def _nt_arithmetic_operator
        start_index = index
        if node_cache[:arithmetic_operator].has_key?(index)
          cached = node_cache[:arithmetic_operator][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        if has_terminal?("+", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("+")
          r1 = nil
        end
        if r1
          r0 = r1
          r0.extend(ArithmeticOperator)
        else
          if has_terminal?("-", false, index)
            r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("-")
            r2 = nil
          end
          if r2
            r0 = r2
            r0.extend(ArithmeticOperator)
          else
            if has_terminal?("*", false, index)
              r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("*")
              r3 = nil
            end
            if r3
              r0 = r3
              r0.extend(ArithmeticOperator)
            else
              if has_terminal?("/", false, index)
                r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
                @index += 1
              else
                terminal_parse_failure("/")
                r4 = nil
              end
              if r4
                r0 = r4
                r0.extend(ArithmeticOperator)
              else
                if has_terminal?("%", false, index)
                  r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
                  @index += 1
                else
                  terminal_parse_failure("%")
                  r5 = nil
                end
                if r5
                  r0 = r5
                  r0.extend(ArithmeticOperator)
                else
                  @index = i0
                  r0 = nil
                end
              end
            end
          end
        end

        node_cache[:arithmetic_operator][start_index] = r0

        r0
      end

      def _nt_relational_operator
        start_index = index
        if node_cache[:relational_operator].has_key?(index)
          cached = node_cache[:relational_operator][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        if has_terminal?("=", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("=")
          r1 = nil
        end
        if r1
          r0 = r1
          r0.extend(RelationalOperator)
        else
          if has_terminal?("=!", false, index)
            r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure("=!")
            r2 = nil
          end
          if r2
            r0 = r2
            r0.extend(RelationalOperator)
          else
            if has_terminal?("<", false, index)
              r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("<")
              r3 = nil
            end
            if r3
              r0 = r3
              r0.extend(RelationalOperator)
            else
              if has_terminal?(">", false, index)
                r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
                @index += 1
              else
                terminal_parse_failure(">")
                r4 = nil
              end
              if r4
                r0 = r4
                r0.extend(RelationalOperator)
              else
                if has_terminal?("<=", false, index)
                  r5 = instantiate_node(SyntaxNode,input, index...(index + 2))
                  @index += 2
                else
                  terminal_parse_failure("<=")
                  r5 = nil
                end
                if r5
                  r0 = r5
                  r0.extend(RelationalOperator)
                else
                  if has_terminal?(">=", false, index)
                    r6 = instantiate_node(SyntaxNode,input, index...(index + 2))
                    @index += 2
                  else
                    terminal_parse_failure(">=")
                    r6 = nil
                  end
                  if r6
                    r0 = r6
                    r0.extend(RelationalOperator)
                  else
                    @index = i0
                    r0 = nil
                  end
                end
              end
            end
          end
        end

        node_cache[:relational_operator][start_index] = r0

        r0
      end

      def _nt_logical_operator
        start_index = index
        if node_cache[:logical_operator].has_key?(index)
          cached = node_cache[:logical_operator][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        if has_terminal?("and", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 3))
          @index += 3
        else
          terminal_parse_failure("and")
          r1 = nil
        end
        if r1
          r0 = r1
          r0.extend(LogicalOperator)
        else
          if has_terminal?("or", false, index)
            r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure("or")
            r2 = nil
          end
          if r2
            r0 = r2
            r0.extend(LogicalOperator)
          else
            if has_terminal?("not", false, index)
              r3 = instantiate_node(SyntaxNode,input, index...(index + 3))
              @index += 3
            else
              terminal_parse_failure("not")
              r3 = nil
            end
            if r3
              r0 = r3
              r0.extend(LogicalOperator)
            else
              @index = i0
              r0 = nil
            end
          end
        end

        node_cache[:logical_operator][start_index] = r0

        r0
      end

      def _nt_dynamic_word
        start_index = index
        if node_cache[:dynamic_word].has_key?(index)
          cached = node_cache[:dynamic_word][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        if has_terminal?('\G[^\\s\\n\\r\\t]', true, index)
          r0 = instantiate_node(DynamicWord,input, index...(index + 1))
          @index += 1
        else
          r0 = nil
        end

        node_cache[:dynamic_word][start_index] = r0

        r0
      end

      def _nt_value
        start_index = index
        if node_cache[:value].has_key?(index)
          cached = node_cache[:value][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        r1 = _nt_integer
        if r1
          r0 = r1
          r0.extend(Value)
        else
          r2 = _nt_float
          if r2
            r0 = r2
            r0.extend(Value)
          else
            r3 = _nt_boolean
            if r3
              r0 = r3
              r0.extend(Value)
            else
              r4 = _nt_single_quoted_string
              if r4
                r0 = r4
                r0.extend(Value)
              else
                r5 = _nt_double_quoted_string
                if r5
                  r0 = r5
                  r0.extend(Value)
                else
                  r6 = _nt_nil_value
                  if r6
                    r0 = r6
                    r0.extend(Value)
                  else
                    r7 = _nt_dynamic_word
                    if r7
                      r0 = r7
                      r0.extend(Value)
                    else
                      r8 = _nt_s_expression
                      if r8
                        r0 = r8
                        r0.extend(Value)
                      else
                        @index = i0
                        r0 = nil
                      end
                    end
                  end
                end
              end
            end
          end
        end

        node_cache[:value][start_index] = r0

        r0
      end

      def _nt_nil_value
        start_index = index
        if node_cache[:nil_value].has_key?(index)
          cached = node_cache[:nil_value][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        if has_terminal?("nil", false, index)
          r0 = instantiate_node(NilNode,input, index...(index + 3))
          @index += 3
        else
          terminal_parse_failure("nil")
          r0 = nil
        end

        node_cache[:nil_value][start_index] = r0

        r0
      end

      module List0
        def value
          elements[0]
        end

      end

      module List1
        def space
          elements[1]
        end

      end

      def _nt_list
        start_index = index
        if node_cache[:list].has_key?(index)
          cached = node_cache[:list][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0, s0 = index, []
        if has_terminal?("'", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("'")
          r1 = nil
        end
        s0 << r1
        if r1
          r2 = _nt_space
          s0 << r2
          if r2
            if has_terminal?('(', false, index)
              r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure('(')
              r3 = nil
            end
            s0 << r3
            if r3
              i4, s4 = index, []
              r5 = _nt_value
              s4 << r5
              if r5
                s6, i6 = [], index
                loop do
                  r7 = _nt_space
                  if r7
                    s6 << r7
                  else
                    break
                  end
                end
                r6 = instantiate_node(SyntaxNode,input, i6...index, s6)
                s4 << r6
              end
              if s4.last
                r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
                r4.extend(List0)
              else
                @index = i4
                r4 = nil
              end
              s0 << r4
              if r4
                if has_terminal?(')', false, index)
                  r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
                  @index += 1
                else
                  terminal_parse_failure(')')
                  r8 = nil
                end
                s0 << r8
              end
            end
          end
        end
        if s0.last
          r0 = instantiate_node(List,input, i0...index, s0)
          r0.extend(List1)
        else
          @index = i0
          r0 = nil
        end

        node_cache[:list][start_index] = r0

        r0
      end

      def _nt_integer
        start_index = index
        if node_cache[:integer].has_key?(index)
          cached = node_cache[:integer][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        s0, i0 = [], index
        loop do
          if has_terminal?('\G[0-9]', true, index)
            r1 = true
            @index += 1
          else
            r1 = nil
          end
          if r1
            s0 << r1
          else
            break
          end
        end
        if s0.empty?
          @index = i0
          r0 = nil
        else
          r0 = instantiate_node(IntegerNode,input, i0...index, s0)
        end

        node_cache[:integer][start_index] = r0

        r0
      end

      module Float0
      end

      def _nt_float
        start_index = index
        if node_cache[:float].has_key?(index)
          cached = node_cache[:float][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0, s0 = index, []
        s1, i1 = [], index
        loop do
          if has_terminal?('\G[0-9]', true, index)
            r2 = true
            @index += 1
          else
            r2 = nil
          end
          if r2
            s1 << r2
          else
            break
          end
        end
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        s0 << r1
        if r1
          if has_terminal?(".", false, index)
            r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure(".")
            r3 = nil
          end
          s0 << r3
          if r3
            s4, i4 = [], index
            loop do
              if has_terminal?('\G[0-9]', true, index)
                r5 = true
                @index += 1
              else
                r5 = nil
              end
              if r5
                s4 << r5
              else
                break
              end
            end
            if s4.empty?
              @index = i4
              r4 = nil
            else
              r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
            end
            s0 << r4
          end
        end
        if s0.last
          r0 = instantiate_node(FloatNode,input, i0...index, s0)
          r0.extend(Float0)
        else
          @index = i0
          r0 = nil
        end

        node_cache[:float][start_index] = r0

        r0
      end

      def _nt_boolean
        start_index = index
        if node_cache[:boolean].has_key?(index)
          cached = node_cache[:boolean][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0 = index
        if has_terminal?("#t", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 2))
          @index += 2
        else
          terminal_parse_failure("#t")
          r1 = nil
        end
        if r1
          r0 = r1
          r0.extend(BooleanNode)
        else
          if has_terminal?("#f", false, index)
            r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure("#f")
            r2 = nil
          end
          if r2
            r0 = r2
            r0.extend(BooleanNode)
          else
            @index = i0
            r0 = nil
          end
        end

        node_cache[:boolean][start_index] = r0

        r0
      end

      def _nt_space
        start_index = index
        if node_cache[:space].has_key?(index)
          cached = node_cache[:space][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        if has_terminal?('\G[\\s\\n\\r\\t]', true, index)
          r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          r0 = nil
        end

        node_cache[:space][start_index] = r0

        r0
      end

      module DoubleQuotedString0
      end

      def _nt_double_quoted_string
        start_index = index
        if node_cache[:double_quoted_string].has_key?(index)
          cached = node_cache[:double_quoted_string][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0, s0 = index, []
        if has_terminal?('"', false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure('"')
          r1 = nil
        end
        s0 << r1
        if r1
          s2, i2 = [], index
          loop do
            i3 = index
            if has_terminal?('\\"', false, index)
              r4 = instantiate_node(SyntaxNode,input, index...(index + 2))
              @index += 2
            else
              terminal_parse_failure('\\"')
              r4 = nil
            end
            if r4
              r3 = r4
            else
              if has_terminal?('\G[^"]', true, index)
                r5 = true
                @index += 1
              else
                r5 = nil
              end
              if r5
                r3 = r5
              else
                @index = i3
                r3 = nil
              end
            end
            if r3
              s2 << r3
            else
              break
            end
          end
          r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
          s0 << r2
          if r2
            if has_terminal?('"', false, index)
              r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure('"')
              r6 = nil
            end
            s0 << r6
          end
        end
        if s0.last
          r0 = instantiate_node(DoubleQuotedString,input, i0...index, s0)
          r0.extend(DoubleQuotedString0)
        else
          @index = i0
          r0 = nil
        end

        node_cache[:double_quoted_string][start_index] = r0

        r0
      end

      module SingleQuoredString0
      end

      def _nt_single_quored_string
        start_index = index
        if node_cache[:single_quored_string].has_key?(index)
          cached = node_cache[:single_quored_string][index]
          if cached
            cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
            @index = cached.interval.end
          end
          return cached
        end

        i0, s0 = index, []
        if has_terminal?("'", false, index)
          r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("'")
          r1 = nil
        end
        s0 << r1
        if r1
          s2, i2 = [], index
          loop do
            i3 = index
            if has_terminal?("\\'", false, index)
              r4 = instantiate_node(SyntaxNode,input, index...(index + 2))
              @index += 2
            else
              terminal_parse_failure("\\'")
              r4 = nil
            end
            if r4
              r3 = r4
            else
              if has_terminal?('\G[^\']', true, index)
                r5 = true
                @index += 1
              else
                r5 = nil
              end
              if r5
                r3 = r5
              else
                @index = i3
                r3 = nil
              end
            end
            if r3
              s2 << r3
            else
              break
            end
          end
          r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
          s0 << r2
          if r2
            if has_terminal?("'", false, index)
              r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure("'")
              r6 = nil
            end
            s0 << r6
          end
        end
        if s0.last
          r0 = instantiate_node(SingleQuotedString,input, i0...index, s0)
          r0.extend(SingleQuoredString0)
        else
          @index = i0
          r0 = nil
        end

        node_cache[:single_quored_string][start_index] = r0

        r0
      end

    end

    class SchemeParser < Treetop::Runtime::CompiledParser
      include Scheme
    end

end
