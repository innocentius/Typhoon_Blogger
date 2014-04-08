require 'spec_helper'

describe "Posts" do
  before do
    @post = Post.new(title: "Example Post", content: "whatever it is", user_id: 0)
  end

  subject { @post }
  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) } 

end
