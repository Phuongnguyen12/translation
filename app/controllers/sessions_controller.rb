class SessionsController < ActionController::Base
  include ApplicationHelper

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

    # todo complete parameters passing to api_request function
    resp = api_request("/v1/users/sign_in", "post", {
        email: params[:email],
        password: params[:password]
    })



    if resp.code == "200"
      hash = JSON.parse resp.body


      # todo handle successful case
      cookies[:token] = hash[:auth_token]
      redirect_to admin_translations_path

    else

      # todo display error
      render "new"
    end

    # the reason why we need to write the token in cookies is that token is the thing that we recieve from the api. so now we will have to connect to the api




  end

end
