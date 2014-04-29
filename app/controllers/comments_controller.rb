class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end 
  def show
  end
  
  def new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json

  # DELETE /comments/1
  # DELETE /comments/1.json
  private
  
  def comment_params
    params.require(:comment).permit(:title, :content)
  end
end
