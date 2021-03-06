require "administrate/base_dashboard"

class TranslationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    key: Field::Text.with_options(
      searchable: true
    ),
    locale: Field::Select.with_options(
      collection: ["en", "fi", "tr", "sv", "da"]
    ),
    value: Field::Text.with_options(
      searchable: true
    ),
    description: Field::Text.with_options(
      searchable: true
    ),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :key,
    :locale,
    :value,
    :description
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :key,
    :locale,
    :value,
    :description,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :key,
    :locale,
    :value,
    :description
  ].freeze

  # Overwrite this method to customize how translations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(translation)
  #   "Translation ##{translation.id}"
  # end
end
