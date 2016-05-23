class UserNotifier < ActionMailer::Base
  default :from => 'do-not-reply@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_email
    @fields = @quote
    #@fields = fields
    @name = "Mark"
    mail( :to => 'mrg007@gmail.com, mark001go@yahoo.com',
    :subject => 'Quote request' )

  end
end