class TasksController < ApplicationController

  def new
    @project = Project.find params[:project_id]
    @task = Task.new
  end

  def create
    @project = Project.find params[:project_id]
    @task = @project.tasks.build params[:task]

    if @task.save
      redirect_to project_url(@project)
    else
      render :new
    end
  end
end
