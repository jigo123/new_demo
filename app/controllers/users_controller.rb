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
  
 

  
   def destroy
    @user = current_user
    @user.destroy

    respond_to do |format|
      render 'success', :locals => {:message => 'Checkout successful', :details => "User: #{@user.email}"}
    end
   end
   
  
  
  
end
