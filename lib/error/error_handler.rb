module Error
  module ErrorHandler
    def self.included(klass)
      klass.class_eval do
        rescue_from StandardError do |e|
          render status: 500, json: { error: e.message }
        end

        rescue_from ActiveRecord::RecordNotFound do |e|
          render status: 404, json: { error: e.message }
        end

        rescue_from CustomBadRequestError do |e|
          render status: 400, json: { error: e.message }
        end
      end
    end
  end

  class CustomBadRequestError < StandardError
    def initialize(message = nil)
      message =
        if message.present?
          "#{self.class.name}: #{message}"
        else
          self.class.name.demodulize.titlecase.humanize
        end
      super(message)
    end
  end

  class InvalidISBN < CustomBadRequestError; end
end
