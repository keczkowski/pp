class HomeController < ApplicationController

  def index
  end

  def def
    @concept = Concept.find(params[:id])
  end

  def contact
    @contact_form = ContactForm.new
  end

  def definitions
    @q = Concept.ransack(params[:q])
    @concepts = @q.result(distinct: true).page params[:page]
  end

end
