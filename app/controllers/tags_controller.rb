class TagsController < ApplicationController
  before_action :set_tag, only: %i[show edit udpate destroy]

  def index
    @tags = Tag.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag. notice: "Tag was successfully created!"
    else
      flash.now[:alert] = @tag.errors.full_name.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to @tag, notice: "Tag was successfully updated!"
    else
      flash.now[:alert] = @tag.errors.full_name.to_sentence
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_url, notice: "Tag was successfully destroyed!"
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:title)
  end
end
