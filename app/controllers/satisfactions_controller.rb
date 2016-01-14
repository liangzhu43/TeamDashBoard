class SatisfactionsController < ApplicationController
  def index
    @satisfactions = Satisfaction.all
  end

  def show
    @satisfaction = Satisfaction.find(params[:id])
  end

  def new
    @satisfaction = Satisfaction.new
  end

  def create
    @satisfaction = Satisfaction.new(satisfaction_params)

    if @satisfaction.save
      redirect_to @satisfaction
    else
      render 'new'
    end
  end

  private
    def satisfaction_params
      params.require(:satisfaction).permit(:date, :name, :category, :score)
    end
end
