#as a user
#So that I can focus on tasks to complete
#I want to mark tasks as complete and have them disappear from the list.


class CompleteTask
    #the initialize method takes no arguments as the tasks are predefined, but we could give it an arg passing the tasks to complete.
    def initialize
        # instance variable containing the list of taks to be completed for 
        @tasks = ["task1", "task2", "task3", "task4", "task5", "task6", "task7"]
    end
#this method deletes a given completed task from the @task instance variable
    def new_task_completed(task)
        @tasks.delete(task)
    end
#the below method returns the tasks to be completed
    def task_to_complete
        return "You have the following tasks to complete: #{@tasks.join(", ")}"
    end


end

#examples 
#the below examples will be mark as completed then deleted
complete_task = CompleteTask.new
complete_task.new_task_completed("task2")
complete_task.new_task_completed("task5")
complete_task.new_task_completed("task6")
complete_task.new_task_completed("task7")