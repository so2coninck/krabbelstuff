class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show

    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

   def create
    @task = Task.new(task_params)
    if @task.save
       redirect_to tasks_url
        flash[:notice] ="Votre message a été envoyé avec succès. Il apparaîtra sur le site dans quelques jours"

    else
      render :new
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to :action => 'index'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

    def task_params
      params.require(:task).permit(:name, :child_name, :promotion, :description, :statut)
    end

    def set_task
      @task = Task.find(params[:id])
    end
end
