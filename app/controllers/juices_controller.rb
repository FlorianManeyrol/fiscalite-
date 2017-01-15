class JuicesController < ApplicationController
  before_action :set_juice, only: [:show, :edit, :update, :destroy]

  def index
    @juices = Juice.all
  end

  def show
  end

  def new
    @juice = Juice.new
  end

  def create
    @juice = Juice.new(juices_params)
    if @juice.save
      redirect_to @juice
      flash[:notice] = "Successfully created #{@juice.name}"
    else
      flash[:error] = "Error while create juice"
      render :new
    end
  end

  def edit
  end

  def update
    if @juice.update(juices_params)
      redirect_to @juice
    else
      flash[:error] = "Error while update juice"
      render :edit
    end
  end

  def destroy
   @juice.destroy
   redirect_to juices_path
  end

  private

  def set_juice
    @juice = Juice.find(params[:id])
  end

  def juices_params
    params.require(:juice).permit(:name, :ingredient, :preparation)
  end
end
