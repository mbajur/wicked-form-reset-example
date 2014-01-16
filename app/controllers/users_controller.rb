class UsersController < ActionController::Base
  layout 'application'
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params["user"])
        format.html { redirect_to edit_user_path(@user), notice: 'User saved.' }
      else
        format.html { render action: :edit }
      end
    end
  end
end