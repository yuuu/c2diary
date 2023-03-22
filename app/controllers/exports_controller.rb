class ExportsController < ApplicationController
  def index
    @diaries = current_user.diaries.order(date: :desc)
  end
end
