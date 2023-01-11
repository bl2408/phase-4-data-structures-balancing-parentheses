require_relative './stack'

# your code here
def balancing_parentheses str

    stack = Stack.new

    str.chars.each do | i |
        if stack.peek == '(' && i ==")"
            stack.pop
        else
            stack.push(i)
        end
    end
    stack.size
end

# pp balancing_parentheses("(()()()))))")