class EmailsController < ApplicationController
  def index
    @email = Email.new(
      email_address: '',
      subject: 'This is just a test.',
      text: 'This is the text version of your email.'
    )
  end

  def create
    @email = Email.new(params[:email])
    @email.send_via_mandrill

    redirect_to root_path, notice: 'Email was sent!'
  end
end
