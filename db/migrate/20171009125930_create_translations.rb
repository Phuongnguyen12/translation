class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.text :key
      t.string :locale
      t.text :value

      t.timestamps
    end
  end
end
