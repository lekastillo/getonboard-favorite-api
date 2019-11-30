FactoryBot.define do
  factory :favorite_job do
    trait :full do
      job_id { 'my-favorite-jobs' }
    end
    
    trait :empty do
      job_id { nil }
    end

  end
end

# == Schema Information
#
# Table name: favorite_jobs
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  job_id     :string
#
