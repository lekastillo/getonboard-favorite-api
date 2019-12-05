class AddFieldToFavoriteJob < ActiveRecord::Migration[6.0]
  def change
    add_column :favorite_jobs, :title, :string
    add_column :favorite_jobs, :logo_url, :text
  end
end
