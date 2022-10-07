require "todo_list"

RSpec.describe TodoListt do 
    it " add tasks" do 
        todo_list = TodoListt.new
        todo_list.add("running uo the hill")
        todo_list.add("buy fruits")
        todo_list.add("have less salt")
        expect(todo_list.incomplete).to eq ["running uo the hill", "buy fruits", "have less salt"]
    end
    it "Complete task" do
    todo_list = TodoListt.new
        todo_list.add("running up the hill")
        todo_list.add("buy fruits")
        todo_list.add("have less salt")
        expect(todo_list.complete).to eq "running up the hill"
end
end