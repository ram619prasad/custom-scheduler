class ConfiguredSchedulersController < ApplicationController

  def index
    @posts = MasterConfiguredScheduler.paginate(page: 10)
  end

end
