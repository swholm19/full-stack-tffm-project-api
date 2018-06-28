# frozen_string_literal: true

class PlayersController < OpenReadController
  before_action :set_player, only: %i[update destroy]

  # GET /players
  def index
    @players = Player.all

    render json: @players
  end

  # GET /players/1
  def show
    render json: Player.find(params[:id])
  end

  # POST /players
  def create
    puts "This is the current user players: #{current_user.players}"
    @player = current_user.players.build(player_params)
    puts 'here now'
    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = current_user.players.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def player_params
    puts 'Inside params'
    params.require(:player).permit(:name, :position, :keeper, :user_id)
  end
end
