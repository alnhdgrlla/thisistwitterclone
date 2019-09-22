class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :authenticate_user!

  has_many :tweets, depedent: :destroy
end
