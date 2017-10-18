class TranslationsController < ActionController::Base


  # paramenters: locale
  #
  # output: json of the translations
  #
  # E.g: /translations?locale=en
  # --> return all translations for locale = en
  # --> output:
  # [
  #     { "key": "hello", "locale": "en", "value": "Hello" },
  #     ...
  # ]
  def index
    # TODO fetching translations from database
    @translations = []
    return @translations
  end

end
