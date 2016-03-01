class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    case step
      when :personal
        @user.name = params[:user][:name]
      when :social
        @user.street = params[:user][:street]
    end
    @user.save!
    render_wizard @user
  end
end
