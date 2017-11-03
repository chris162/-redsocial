class UsuariosController < ApplicationController
	before_action :set_user
<<<<<<< HEAD
	before_action :authenticate_user!,only: [:update]
	before_action :authenticate_owner!,only: [:update]	
=======
>>>>>>> 5ce92726551ecab44dc5616d7f2caba1ee8d0eb0

	def show
		
	end

	def update
		respond_to do |format|
			if @user.update(user_params)
				format.html{ redirect_to @user}
				format.json{ render :show, status: :created, location: @user }
<<<<<<< HEAD
				format.js
			else
				format.html{redirect_to @user,notice:@user.errors.full_messages}
				format.json{ render json: @user.errors }
=======
			else
				format.html{redirect_to @user,notice:@user.errors.full_messages}
                format.json{ render json: @user.errors }
>>>>>>> 5ce92726551ecab44dc5616d7f2caba1ee8d0eb0
			end
		end
	end

	private
		def set_user
			@user = User.find(params[:id])
		end

<<<<<<< HEAD
		def authenticate_owner!
			if current_user != @user
				redirect_to root_path, notice: "No estás autorizado",status: :unauthorized
			end
		end

=======
>>>>>>> 5ce92726551ecab44dc5616d7f2caba1ee8d0eb0
		def user_params
			params.require(:user).permit(:email,:username,:name,:last_name,:bio,:avatar,:cover)
		end
end