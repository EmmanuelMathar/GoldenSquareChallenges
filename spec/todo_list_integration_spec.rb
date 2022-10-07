require "todo_list"
require "todo"

RSpec.describe "Integration" do 
    it "constructs" do 
        todolist = TodoListt.new 
        todo1 = Todo.new("learn slowly")
        todo2 = Todo.new("run tests")
        todolist.add(todo1)
        todolist.add(todo2)
        expect(todolist.incomplete).to eq [todo1, todo2]
    end 
end 
