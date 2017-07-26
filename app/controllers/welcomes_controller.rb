class WelcomesController < ApplicationController

  # main page
  def index
    @welcome = Welcome.new
    @contact = Contact.new
  end


  # POST /welcomes
  # POST /welcomes.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to root_path, notice: 'Vielen Dank für die Nachricht.' }
        #format.json { render :show, status: :created, location: @welcome }
      else
        format.html { render root_path}
        #format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:welcome).permit(:name, :email, :message)
    end


end
