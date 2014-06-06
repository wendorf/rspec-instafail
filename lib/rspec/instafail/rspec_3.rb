require 'rspec/core'

module RSpec
  class Instafail < RSpec::Core::Formatters::ProgressFormatter
    RSpec::Core::Formatters.register self, :example_failed

    def example_failed(notification)
      @failed_examples_count ||= 0
      @failed_examples_count += 1

      output.puts notification.fully_formatted(@failed_examples_count)
    end
  end
end
