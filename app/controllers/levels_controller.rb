class LevelsController < ApplicationController
    def index
      @levels = Level.all
    end

    def show
      @level = Level.find(params[:id])
    end

    def new
      @level = Level.new
    end

    def create
      Level.create(
        title: params[:level][:title],
        description: params[:level][:description]
        )
      num_challenges = params[:num_challenges].to_i;
      num_challenges.times do |i|
        Challenge.create(
          title: params["ch_title"+i.to_s],
          description: params["ch_desc"+i.to_s],
          question: params["ch_q"+i.to_s],
          answer: params["ch_a"+i.to_s],
          level_id: Level.last.id.to_i
          )
      end
      redirect_to "/levels"
    end

    def edit
      @level  = Level.find(params[:id])
    end

    def update
      Level.update(params[:id],
        title: params[:level][:title],
        description: params[:level][:description]
        )
      redirect_to "/levels/"+params[:id]
    end

    def destroy
      Level.desroy(params[:id])
      redirect_to "/levels"
    end
end
