class ProfilesController < ApplicationController
  def show
    @user = current_user    
    @statuses = current_user.statuses.all
  end
end
