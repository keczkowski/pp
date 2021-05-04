class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Concept.ransack(params[:q])
    @concepts = @q.result(distinct: true).page params[:page]
  end

  def def
    @concept = Concept.find(params[:id])
  end

end
