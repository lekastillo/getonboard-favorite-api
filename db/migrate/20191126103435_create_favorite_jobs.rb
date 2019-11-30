class CreateFavoriteJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_jobs do |t|
      t.string :job_id

      t.timestamps
    end
  end
end
