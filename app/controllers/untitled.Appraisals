# GET /contacts/new
  def new
    @welcome = Welcome.new
  end


  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to @welcome, notice: 'Vielen Dank für die Nachricht.' }
        format.json { render :show, status: :created, location: @welcome }
      else
        format.html { render :new }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end



  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:welcome).permit(:name, :email, :message)
    end