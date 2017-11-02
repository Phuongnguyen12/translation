class TranslationsController < ActionController::Base


  # paramenters: locale
  #
  # output: json of the translations
  #
  # E.g: /translations?locale=en&greeting=hello
  # --> return all translations for locale = en
  # --> output:
  # {
  #   "hello": "moi",
  #   "service": "service",
  #   ...
  # }
  def index
    # TODO fetching translations from database
    # @translations = Translation.all
    @translations = Translation.where(locale: params[:locale])
    # to return json --> search for "response as json in rails 5"
    #return @translations
    @resp = Hash[*@translations.map{ |x| [x.key, x.value] }.flatten]
    render :json => @resp
  end

  # parameters: id
  # output: json of all translations with param key
  # E.g: /translations/test
  # --> output:
  # [
  #     { "key": "test", "locale": "en", "value": "Hello" },
  #     { "key": "test", "locale": "fi", "value": "Moi" },
  #     ...
  # ]
  def show
    @translation = Translation.where(key: params[:id])
    render :json => @translations
  end

end
