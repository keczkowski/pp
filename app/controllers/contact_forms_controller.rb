class ContactFormsController < ApplicationController

  # GET /contact_forms/new
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)

    respond_to do |format|
      if @contact_form.save
        UserMailer.new_contact_form(@contact_form).deliver_now
        format.html { redirect_to root_url, notice: 'Message was sent.' }
      else
        format.html { render :new }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_form_params
    params.require(:contact_form).permit(:email, :title, :body, :name)
  end
end
