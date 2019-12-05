require 'rails_helper'

RSpec.describe FavoriteJob, type: :model do
  it 'is not valid with empty attributes' do
    favorite_job = FactoryBot.build(:favorite_job, :empty)

    expect(favorite_job).to_not be_valid, lambda { favorite_job.errors.full_messages.join("\n") }
  end
  
  it 'is valid with full attributes' do
    favorite_job = FactoryBot.build(:favorite_job, :full)

    expect(favorite_job).to be_valid
  end
  
  it 'is not valid with the existing job_id' do
    favorite_job = FactoryBot.create(:favorite_job, :full)
    favorite_job_duplicate = FactoryBot.build(:favorite_job, :full)

    expect(favorite_job_duplicate).to_not be_valid
  end

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
