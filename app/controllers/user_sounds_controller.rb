class UserSoundsController < ApplicationController
  before_action :set_user_sound, only: [:show, :edit, :update, :destroy]

  # GET /user_sounds
  # GET /user_sounds.json
  def index
    @user_sounds = UserSound.all
  end

  # GET /user_sounds/1
  # GET /user_sounds/1.json
  def show
  end

  # GET /user_sounds/new
  def new
    @user_sound = UserSound.new
  end

  # GET /user_sounds/1/edit
  def edit
  end

  # POST /user_sounds
  # POST /user_sounds.json
  def create
    @user_sound = UserSound.new(user_sound_params)

    respond_to do |format|
      if @user_sound.save
        format.html { redirect_to @user_sound, notice: 'User sound was successfully created.' }
        format.json { render :show, status: :created, location: @user_sound }
      else
        format.html { render :new }
        format.json { render json: @user_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_sounds/1
  # PATCH/PUT /user_sounds/1.json
  def update
    respond_to do |format|
      if @user_sound.update(user_sound_params)
        format.html { redirect_to @user_sound, notice: 'User sound was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_sound }
      else
        format.html { render :edit }
        format.json { render json: @user_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sounds/1
  # DELETE /user_sounds/1.json
  def destroy
    @user_sound.destroy
    respond_to do |format|
      format.html { redirect_to user_sounds_url, notice: 'User sound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sound
      @user_sound = UserSound.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_sound_params
      params.require(:user_sound).permit(:user_id, :sound_id)
    end
end
