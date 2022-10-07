require "tasks_completed"

RSpec.describe CompleteTask do 
    it "returns a list of tasks to complete" do
        complete_task = CompleteTask.new
        complete_task.new_task_completed("task2")
        complete_task.new_task_completed("task5")
        complete_task.new_task_completed("task6")
        complete_task.new_task_completed("task7")
        expect(complete_task.task_to_complete).to eq "You have the following tasks to complete: task1, task3, task4"
    end 
end