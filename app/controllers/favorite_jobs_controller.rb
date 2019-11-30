class FavoriteJobsController < ApplicationController
  before_action :set_favorite_job, only: [:destroy]
  def index
    @favorite_jobs= FavoriteJob.all
    render json: @favorite_jobs
  end

  # POST /favorite_jobs
  def create
    @favorite_job = FavoriteJob.new(favorite_job_params)

    if @favorite_job.save
      render json: @favorite_job, status: :created
    else
      render json: @favorite_job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_jobs/id
  def destroy
    @favorite_job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_job
      @favorite_job = FavoriteJob.find_by(job_id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_job_params
      params.require(:favorite_job).permit(:job_id)
    end
end
