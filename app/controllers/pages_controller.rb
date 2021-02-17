class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @themes = Theme.all.map { |theme| theme.name }
  end
end
