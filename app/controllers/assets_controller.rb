class AssetsController < ActionController::Base
  include Wicked::Wizard

  steps :welcome, :editor

  def show
    @user = User.first
    render_wizard
  end

  def update
    @user = User.first

    case step
    when :assets
      @user.update_attributes(params["user"])
    end

    throw @user.valid?.to_s

    if @user.errors.any?
      render_wizard
    else
      render_wizard @user
    end
  end
end