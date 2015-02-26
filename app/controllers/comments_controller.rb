class CommentsController < ApplicationController

  def create
    @commentable = find_commentable 
    @comment = Comment.create(comment_params)
    @commentable.comments << @comment #empty array
    redirect_to :back
  end
end

private
def find_commentable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end 
  nil
end 

def comment_params
  params.require(:comment).permit(:content)
end 

 

