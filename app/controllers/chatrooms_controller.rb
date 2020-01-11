class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.custom_display
  end

  def show
  end

  def new
  end

  def edit
  end
end
