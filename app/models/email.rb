class Email < ActiveRecord::Base
  attr_accessible :email_address, :subject, :html, :text

  def send_via_mandrill
    message = {
      html: html,
      text: text,
      subject: subject,
      from_email: 'baby@monkey.com',
      from_name: 'Baby Monkey',
      to: [email: email_address],
      auto_text: false,
      merge: true
    }

    MANDRILL.messages :send, { :message => message }
  end
end
