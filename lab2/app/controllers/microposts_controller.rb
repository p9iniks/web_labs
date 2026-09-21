class MicropostsController < ApplicationController
  before_action :set_micropost, only: %i[ show edit update destroy ]

  # GET /microposts
  def index
    @microposts = Micropost.all
  end

  # GET /microposts/1
  def show
  end

  # GET /microposts/new
  def new
    @micropost = Micropost.new
  end

  # GET /microposts/1/edit
  def edit
  end

  # POST /microposts
  def create
    @micropost = Micropost.new(micropost_params)

    if @micropost.save
      redirect_to @micropost, notice: "Micropost was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /microposts/1
  def update
    if @micropost.update(micropost_params)
      redirect_to @micropost, notice: "Micropost was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /microposts/1
  def destroy
    @micropost.destroy!
    redirect_to microposts_path, notice: "Micropost was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = Micropost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def micropost_params
      params.expect(micropost: [ :content, :user_id ])
    end
end
