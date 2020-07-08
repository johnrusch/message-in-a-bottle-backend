class Api::V1::JournalsController < ApplicationController
    def index
        journals = Journal.all
        render json: journals.to_json
    end
end