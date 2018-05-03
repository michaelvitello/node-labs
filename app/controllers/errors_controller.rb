class ErrorsController < ActionController::Base
  layout 'error'

  def show
    status_code = params[:code] || 500

    @images = [
      "https://media.giphy.com/media/29SqSyXlyO6WI/giphy.gif",
      "https://media.giphy.com/media/3ornkf5G08sz72snmM/giphy.gif",
      "https://media.giphy.com/media/wkdSsTFRAwxcQ/giphy.gif",
    ]

    render status_code.to_s, status: status_code
  end

end
