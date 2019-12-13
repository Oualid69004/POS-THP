class UserMailer < ApplicationMailer
    default :from => 'lucas.lensi@gmail.com'
    #no_reply@thp-pos.com

    # send a signup email to the user, pass in the user object that   contains the user’s email address
  def welcome_email(user)
    @user = user
    @url  = 'http://monsite.fr/login'
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
  def welcome_employee(user)
    @user = user
    @url  = root_path
    @company = current_user.company
    @mdp = edit_user_password_path
    mail( :to => @user.email,

    :subject => 'Thanks for signing up for our amazing app ' )
  end
end
