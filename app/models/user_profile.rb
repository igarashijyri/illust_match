class UserProfile < ApplicationRecord
  belongs_to :user


  private

  def profile_id
    return params[:id].to_i
  end

end
