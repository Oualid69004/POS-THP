def show 
    @user =User.find(params[:id])
end
def update
    redirect_to root_path
end