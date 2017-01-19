class SearchController < ApplicationController
  before_action :authenticate_user! , only: [:new, :create, :edit, :update, :destroy]
  before_action :find_job_and_check_permission , only: [:edit, :destroy, :update]


    def index
      @jobs = Job.where(title: params[:title])
    end


    def job_params
      params.require(:job).permit(:title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden)
    end

end
