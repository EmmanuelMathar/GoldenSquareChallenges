class Todo
    def initialize(task)
        @task = [task]
    end

    def task
        return @task
    end 

    def mark_done!
        @list_done = @task.map {|task| "Done: #{task}" }
    end

    def done?
        if @list_done == true
            true 
        else
            false
    end
    end


end

todo1 = Todo.new("learn slowly")
todo2 = Todo.new("run tests")
todo1.task
todo2.task
todo1.done?
todo1.mark_done!