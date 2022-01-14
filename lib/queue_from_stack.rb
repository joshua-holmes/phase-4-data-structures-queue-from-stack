require_relative './stack'

class MyQueue
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def empty_into(stack_to_empty, stack_to_fill)
        while !stack_to_empty.empty? do
            stack_to_fill.push stack_to_empty.pop
        end
    end

    def add(value)
        empty_into @s1, @s2
        @s2.push value
    end

    def remove
        empty_into @s2, @s1
        @s1.pop
    end

    def peek
        empty_into @s2, @s1
        @s1.peek
    end

end
