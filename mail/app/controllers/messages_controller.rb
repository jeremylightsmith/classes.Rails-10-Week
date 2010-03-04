class MessagesController < ApplicationController
  def create
    MessageMailer.deliver_test params[:message][:to]
  end
end