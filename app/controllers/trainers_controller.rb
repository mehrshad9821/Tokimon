class TrainersController < ApplicationController
  before_filter :set_trainer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trainers = Trainer.all
    respond_with(@trainers)
  end

  def show
    respond_with(@trainer)
  end

  def new
    @trainer = Trainer.new
    respond_with(@trainer)
  end

  def edit
  end

  def create
    @trainer = Trainer.new(params[:trainer])
    @trainer.save
    respond_with(@trainer)
  end

  def update
    @trainer.update_attributes(params[:trainer])
    respond_with(@trainer)
  end

  def destroy
    p @trainer
    @trainer.destroy
    respond_with(@trainer)
  end

  private
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end
end
