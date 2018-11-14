class ApplicationController < ActionController::Base
    
    before_action :initialize_session 
    before_action :load_and_increment_visit_count

    private 
    def initialize_session
     session[:visit_count] ||= 0
    end

    def load_and_increment_visit_count
        @visit_count = session[:visit_count] + 1
        session[:visit_count] = @visit_count
    end
end
