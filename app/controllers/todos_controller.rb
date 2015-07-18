class TodosController < ApplicationController

def index
	@todos = Todo.all
	@todo = Todo.new
end

def create
	@todo = Todo.new(white_params)
	@todo.save
	redirect_to todos_path
end

private

def white_params
	params.require(:todo).permit(:text, :completion_date)
end

end
