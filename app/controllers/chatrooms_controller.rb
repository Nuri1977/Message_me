class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
