class AddDescriptionToTranslation < ActiveRecord::Migration[5.1]
  def change
    add_column :translations, :description, :text
  end
end
