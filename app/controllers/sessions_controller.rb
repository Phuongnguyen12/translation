class SessionsController < ActionController::Base

  # parameters: nothing
  #
  # output: render the login form
  def new
    # TODO prepare the form if necessary
  end

  def create
    # TODO authenticate with HMP core API
    # then store the received token string to session or cookie
    #
    # render successful notification to user
  end

end
