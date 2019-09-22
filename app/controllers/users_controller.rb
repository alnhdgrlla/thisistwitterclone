class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :authenticate_user!

end
