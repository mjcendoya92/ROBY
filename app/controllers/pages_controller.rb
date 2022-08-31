class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @dogs = current_user.dogs
  end

end
