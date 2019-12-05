class FavoriteJobsController < ApplicationController
  before_action :set_favorite_job, only: [:show, :destroy]
  def index
    @favorite_jobs= FavoriteJob.all
    render json: @favorite_jobs
  end

  def show
    render json: @favorite_job
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
    
    if @favorite_job && @favorite_job.destroy
      head :no_content
    else
      render json: [], status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_job
      @favorite_job = FavoriteJob.find_by(job_id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_job_params
      params.require(:favorite_job).permit(:job_id, :title, :logo_url)
    end
end
