class StaticPagesController < ApplicationController
  def imprint
    @contact = Contact.new
  end
end
