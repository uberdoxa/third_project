class ChallengesController < ApplicationController
    def index
      @challenges = Challenge.all
    end

    def show
      @challenge = Challenge.find(params[:id])
    end

    def new
      @challenge = Challenge.new
    end

    def create
      Challenge.create(
        name: params[:challenge][:name]
        )
      redirect_to "/challenges"
    end

    def edit
      @challenge  = Challenge.find(params[:id])
    end

    def update
      Challenge.update(params[:id],
        name: params[:challenge][:name]
        )
      redirect_to "/challenges/"+params[:id]
    end

    def destroy
      Challenge.desroy(params[:id])
      redirect_to "/challenges"
    end
end
