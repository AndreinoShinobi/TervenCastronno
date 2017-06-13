class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = nil
      flash[:notice] = 'Grazie. Abbiamo ricevuto il tuo messaggio!'
      redirect_to new
    else
      flash[:notice] = nil
      flash[:error] = 'Errore: Impossibilie inviare il messaggio!'
      redirect_to new
    end
  end
end


