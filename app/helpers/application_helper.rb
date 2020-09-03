module ApplicationHelper
<<<<<<< HEAD
  def authenticate_user
    unless current_user
      flash[:danger] = "Connectez-vous pour continuer."
      redirect_to new_session_path
    end
  end
  
  def authenticate_admin
    unless current_user
      flash[:danger] = "Reservé aux administrateurs."
      redirect_to new_session_path
    end
  end
=======
    def authenticate_user
        unless current_user
          flash[:danger] = "Connectez-vous pour continuer."
          redirect_to new_session_path
        end
    end

    def bootstrap_class_for_flash(type)
      case type
        when 'notice' then "alert-info"
        when 'success' then "alert-success"
        when 'error' then "alert-danger"
        when 'alert' then "alert-warning"
      end
    end


>>>>>>> master
end
