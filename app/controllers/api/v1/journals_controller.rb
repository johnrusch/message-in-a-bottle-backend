class Api::V1::JournalsController < ApplicationController
    def index
        journals = Journal.all
        render json: journals.to_json
    end

    def new
        journal = Journal.new
    end

    def create
        journal = Journal.create(journal_params)
        render json: journal.to_json
    end

    def edit
        journal = Journal.find(params[:id])
    end

    def update
        journal = Journal.find(params[:id])
        journal.update(journal_params)
        render json: journal.to_json
    end

    def destroy
        journal = Journal.find(params[:id])
        journal.destroy
        render json: journal.to_json
    end

    private

    def journal_params
        params.require(:journal).permit(:title, :content, :user_id)
    end
end