require_relative 'features/support/runner/thread_runner'
require_relative 'features/support/runner/optparser'

option = Optparse.parse(ARGV)
     ThreadRunner.run(
    # {format: 'html', path: 'report/', threads: '2', host: "https://apimation.com"}
    option
)