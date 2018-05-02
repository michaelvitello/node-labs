class ErrorsController < ActionController::Base
  layout 'error'

  def show
    status_code = params[:code] || 500

    @images = [
      "https://media.giphy.com/media/29SqSyXlyO6WI/giphy.gif",
      "https://media.giphy.com/media/WyrdDeIxGOlQA/giphy.gif",
      "https://media.giphy.com/media/ErXLlpllVNRoQ/giphy.gif",
      "https://media.giphy.com/media/R35xeFYQ4NQTC/giphy.gif",
      "https://media.giphy.com/media/3osxYACfOYULLSpNjG/giphy.gif",
      "https://media.giphy.com/media/3ornkf5G08sz72snmM/giphy.gif",
      "https://media.giphy.com/media/wkdSsTFRAwxcQ/giphy.gif",
      "https://media.giphy.com/media/cjN7cKA8g0Qda/giphy.gif",
      "https://media.giphy.com/media/Geu2l15OKUDEk/giphy.gif",
    ]

    render status_code.to_s, status: status_code
  end

end
