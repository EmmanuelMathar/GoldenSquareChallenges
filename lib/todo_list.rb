class TodoListt
    def initialize
        @list = []
    end

    def add(todo)
        @list << todo

    end

    def incomplete
        return @list
    end

    def complete
return @list[0]
    end

    def give_up!
    return marks = @list.map {|task| "Done: #{task}" }
    end


end

todo_list = TodoListt.new
todo_list.add("running up the hill")
todo_list.add("buy fruits")
todo_list.add("have less salt")
todo_list.incomplete
todo_list.complete
todo_list.give_up!
