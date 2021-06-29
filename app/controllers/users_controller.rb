class UsersController < ApplicationController


def createcompte
  @user = Utilisateur.new
end 

def comptevalider
  puts params
  @user_exists = Utilisateur.find_by(phone: params[:phone])
  @error = ""

  if @user_exists != nil 
    @error = "Un compte de même n° de télépone exist déjà!"
    redirect_to "/register"
    return
  end

  @user = Utilisateur.new(user_params)

  if @user.save
    redirect_to "/otp"
  else
  end
end

end
