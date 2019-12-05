class FavoriteJob < ApplicationRecord
    validates :job_id, presence: true
    validates :job_id, uniqueness: true

end

# == Schema Information
#
# Table name: favorite_jobs
#
#  id         :bigint           not null, primary key
#  logo_url   :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  job_id     :string
#
