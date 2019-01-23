class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    render json: { status: 'success', message: 'loaded posts', data: posts }
  end
end