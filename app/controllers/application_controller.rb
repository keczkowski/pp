class ApplicationController < ActionController::Base

  def is_verified
    unless current_user.present? and current_user.verified == true
      redirect_to root_path, notice: "Twoje konto nie zostało jeszcze zweryfikowane. Skontaktuj się z administratorem systemu."
    end
  end

  def has_access_to_concepts
    unless current_user.present? and current_user.verified == true and current_user.access_concepts == true
      redirect_to root_path, notice: "Nie masz dostępu do tej części systemu."
    end
  end

  def has_access_to_tags
    unless current_user.present? and current_user.verified == true and current_user.access_tags == true
      redirect_to root_path, notice: "Nie masz dostępu do tej części systemu."
    end
  end

  def has_access_to_users
    unless current_user.present? and current_user.verified == true and current_user.access_users == true
      redirect_to root_path, notice: "Nie masz dostępu do tej części systemu."
    end
  end

  def has_access_to_contact_forms
    unless current_user.present? and current_user.verified == true and current_user.access_forms == true
      redirect_to root_path, notice: "Nie masz dostępu do tej części systemu."
    end
  end

end
