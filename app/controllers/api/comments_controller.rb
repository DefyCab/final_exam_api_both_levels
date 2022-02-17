class Api::CommentsController < ApplicationController
  # before_action :authenticate_user!, only: [:create]
  def create
    comment = Comment.all
    render json: { comment: comment }, status: 201
  end
end
