class Api::V1::UsersController < Api::V1::BaseController


  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :open_id, :avatar)
  end

end
