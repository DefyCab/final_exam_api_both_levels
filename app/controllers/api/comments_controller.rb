class Api::CommentsController < ApplicationController
  def create
    comment = Comment.all
    render json: { comment: comment }, status: 201
  end
end
