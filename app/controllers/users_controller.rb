class UsersController < ApplicationController
  layout 'main'

  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
  end

  def edit
  end

  def create
    cookies.delete :auth_token
    # protects against session fixation attacks, wreaks havoc with 
    # request forgery protection.
    # uncomment at your own risk
    # reset_session
    @user = User.new(params[:user])
    @user.save
    if @user.errors.empty?
      self.current_user = @user
      redirect_to(helppage_path("General Instructions"))
      flash[:notice] = "Thanks for signing up!"
    else
      render :action => 'new'
    end
  end

  def update
    respond_to do |format|
      if current_user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(user_accounts_path(current_user)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    User.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to(userinfo_path) }
      format.xml  { head :ok }
    end
  end

end
