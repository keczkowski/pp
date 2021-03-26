class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @concepts = Concept.all.count
    @tags = Tag.all.count
    @users = User.all.count
  end

end
