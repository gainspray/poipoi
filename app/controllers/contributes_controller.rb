class ContributesController < ApplicationController
  def index
    @contributes=Contribute.all
  end
  def new
    @contribute=Contribute.new
  end
  def classify
    @contributes=Contribute.where("videoclass=?",params[:videoclass]).take
  end
  def create
    @contribute=Contribute.new(contribute_params)
    if @contribute.save
      redirect_to :action => :index
    else
      render 'new'
    end
  end
  def show
    @contribute = Contribute.find(params[:id])
  end
  private
  def contribute_params
    params.require(:contribute).permit(:videoname,:video, :image, :command, :videoclass)
  end
end
  
