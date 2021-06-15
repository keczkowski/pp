class HomeController < ApplicationController

  def index
    @q = Concept.ransack(params[:q])
    @concepts = @q.result(distinct: true).page params[:page]
  end

  def def
    @concept = Concept.find(params[:id])
  end

  def contact
    @contact_form = ContactForm.new
  end

end
