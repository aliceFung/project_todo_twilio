class TodosController < ApplicationController

def index
	@todos = Todo.all
	@todo = Todo.new
end

def create
	@todo = Todo.new(white_params)
	@todo.save
  flash[:success] = "Created!"
	redirect_to todos_path
end

def edit
  @todo = Todo.find(params[:id])
end

def update
  @todo = Todo.find(params[:id])
  if @todo.update(white_params)
    flash[:success] = "Updated!"
    redirect_to todos_path
  else
    flash.now[:error] = "Not updated!"
    render :edit
  end
end

def destroy
  @todo = Todo.find(params[:id])
  if @todo.destroy
    flash[:success] = "Task Deleted!"
    redirect_to todos_path
  else
    flash[:error] = "Not deleted!"
    render :edit
  end
end

private

def white_params
	params.require(:todo).permit(:text, :completion_date)
end

end
