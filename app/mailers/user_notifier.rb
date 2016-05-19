class UserNotifier < ActionMailer::Base
  default :from => 'do-not-reply@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_email
    mail( :to => 'mrg007@gmail.com',
    :subject => 'Thanks for signing up for our amazing app' )
  end
end