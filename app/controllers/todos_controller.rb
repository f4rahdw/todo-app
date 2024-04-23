class TodosController < ApplicationController
  before_action :set_project, only: %i[new show create edit update destroy]
  before_action :set_todo, except: %i[new create]
  def new
    @todo = @project.todos.new
  end

  def create
    @todo = @project.todos.build(todo_params)
    if @todo.save
      flash[:notice] = 'Task added successfully'
      redirect_to project_path(@project)
    else
      render :'todos/new', status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @todo.update(todo_params)
      redirect_to project_url(@project), notice: 'Project was successfully updated.'

    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo.destroy
    redirect_to project_todo_path(@project), notice: 'Todo was successfully deleted.'
  end

  def show; end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_todo
    @project = Project.find(params[:project_id])
    return if @project.todos.nil?

    @todo = @project.todos.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def todo_params
    params.require(:todo).permit(:description, :status)
  end
end
