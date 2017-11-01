class TranslationsController < ActionController::Base


  # paramenters: locale
  #
  # output: json of the translations
  #
  # E.g: /translations?locale=en&greeting=hello
  # --> return all translations for locale = en
  # --> output:
  # [
  #     { "key": "hello", "locale": "en", "value": "Hello" },
  #     ...
  # ]
  def index
    # TODO fetching translations from database
    @translations = Translation.all
    @translations = Translation.where(locale: params[:locale])
    # to return json --> search for "response as json in rails 5"
    #return @translations
    render :json => @translations
  end

end
