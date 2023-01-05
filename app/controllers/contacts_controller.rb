class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
      redirect_to new_contact_path, notice: "問い合わせを送信しました！"
    else
      render :new
    end
  end

  def top
  end
end
