class SearchesController < ApplicationController
  def index
    @results = []
    render :action => "show"
  end

  def show
    @search = Search.find(params[:id])
    @results = @search.results
  end

  def create
    @search = Search.new(params[:search])

    if @search.save
      redirect_to(@search)
    else
      flash[:notice] = 'throw me a frikkin bone here.'
      @results = []
      render :action => "show"
    end
  end
end
