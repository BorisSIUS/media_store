module ApplicationHelper
    def authenticate_user
        unless current_user
          flash[:danger] = "Connectez-vous pour continuer."
          redirect_to new_session_path
        end
      end

end
