class GamesController < ApplicationController
  layout 'main'
  
  before_filter :find_game, :except => [:index, :new, :create]
  
  # GET /games
  # GET /games.xml
  def index
    @games = Game.find(:all, :order => "name")
    @help = "Game List"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @games }
    end
  end

  # not used
  def show
  end

  # GET /games/new
  # GET /games/new.xml
  def new
    @game = Game.new
    @help = "New Game"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @game }
    end
  end

  # GET /games/1/edit
  def edit
    @help = "Edit Game"
  end

  # POST /games
  # POST /games.xml
  def create
    @help = "New Game"
    @game = Game.new(params[:game])
    @game.owner = current_user.login
    @game.current_player = 0
    respond_to do |format|
      if @game.save
        flash[:notice] = 'Game was successfully created.'
        format.html { redirect_to(games_path) }
        format.xml  { render :xml => @game, :status => :created, :location => @game }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /games/1
  # PUT /games/1.xml
  def update
    @help = "Edit Game"
    respond_to do |format|
      if @game.update_attributes(params[:game])
        flash[:notice] = 'Game was successfully updated.'
        format.html { redirect_to(games_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.xml
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to(games_path) }
      format.xml  { head :ok }
    end
  end

private  
  
  def find_game
    @game = Game.find(params[:id])
  end
  
end
