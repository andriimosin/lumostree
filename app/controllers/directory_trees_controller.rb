class DirectoryTreesController < ApplicationController
  before_action :set_directory_tree, only: [:show, :edit, :update, :destroy]

  def index
    @directory_trees = DirectoryTree.all
  end

  def show; end

  def new
    @directory_tree = DirectoryTree.new
  end

  def edit; end

  def create
    @directory_tree = DirectoryTree.new(directory_tree_params)

    if @directory_tree.save
      redirect_to directory_trees_url,
                  notice: 'Directory tree was successfully created.'
    else
      render :new
    end
  end

  def update
    if @directory_tree.update(directory_tree_params)
      redirect_to directory_trees_url,
                  notice: 'Directory tree was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @directory_tree.destroy
    redirect_to directory_trees_url,
                notice: 'Directory tree was successfully destroyed.'
  end

  private

  def set_directory_tree
    @directory_tree = DirectoryTree.find(params[:id])
  end

  def directory_tree_params
    params.require(:directory_tree).permit(:name)
  end
end
