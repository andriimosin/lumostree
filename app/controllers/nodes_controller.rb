class NodesController < ApplicationController
  def new
    @node = Node.new
  end

  def create
    @directory_tree = DirectoryTree.find(params[:directory_tree_id])
    @node = @directory_tree.nodes.build(node_params)

    @node.save
    redirect_to directory_tree_path(params[:directory_tree_id]),
                notice: 'Node was successfully created.'
  end

  private

  def node_params
    params.require(:node).permit(:name, :parent_id)
  end
end
