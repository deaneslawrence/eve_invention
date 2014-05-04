class BlueprintUsersController < ApplicationController
  before_action :set_blueprint_user, only: [:show, :edit, :update, :destroy]

  # GET /blueprint_users
  # GET /blueprint_users.json
  def index
    @blueprint_users = BlueprintUser.all
  end

  # GET /blueprint_users/1
  # GET /blueprint_users/1.json
  def show
  end

  # GET /blueprint_users/new
  def new
    @blueprint_user = BlueprintUser.new
  end

  # GET /blueprint_users/1/edit
  def edit
  end

  # POST /blueprint_users
  # POST /blueprint_users.json
  def create
    @blueprint_user = BlueprintUser.new(blueprint_user_params)

    respond_to do |format|
      if @blueprint_user.save
        format.html { redirect_to @blueprint_user, notice: 'Blueprint user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blueprint_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @blueprint_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blueprint_users/1
  # PATCH/PUT /blueprint_users/1.json
  def update
    respond_to do |format|
      if @blueprint_user.update(blueprint_user_params)
        format.html { redirect_to @blueprint_user, notice: 'Blueprint user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blueprint_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blueprint_users/1
  # DELETE /blueprint_users/1.json
  def destroy
    @blueprint_user.destroy
    respond_to do |format|
      format.html { redirect_to blueprint_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blueprint_user
      @blueprint_user = BlueprintUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blueprint_user_params
      params.require(:blueprint_user).permit(:blueprint_id, :user_id, :preferred_decryptor)
    end
end
