class UsersController < ApplicationController

  def edit
    @user = current_user
  end
  
  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes!(params[:user])
      redirect_to(@user, :notice => 'Profile was successfully updated.')
    else
      render :action => "edit"
    end
  end
  
    # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
end
