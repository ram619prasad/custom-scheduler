class ConfiguredSchedulersController < ApplicationController

  def index
    @master_jobs = MasterConfiguredScheduler.paginate(page: params[:page] || 1, per_page: 1)
  end

  def show
    @master_job = MasterConfiguredScheduler.find(params[:id])
  end

end
