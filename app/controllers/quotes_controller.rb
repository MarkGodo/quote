#class QuoteController < ApplicationController
 # skip_before_action :authenticate_user!, only: [:index]
  #def index
  #end
  #def new
  #  @quote = Quote.new
  #end
#end

class QuotesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index]
  #def new
   # @quote = Quote.new
  #end

  def create
    $quote = Quote.new(params[:quote])
    #puts @quote
    #@quote.request = request

    if UserNotifier.send_email.deliver_now
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end