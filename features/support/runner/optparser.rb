require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'pp'

class Optparse
    CODES = %w(iso-2022-jp shift_jis euc-jp utf8 binary).freeze
    CODE_ALIASES = { 'jis' => 'iso-2022-jp', 'sjis' => 'shift_jis' }.freeze

    def self.parse(args)
        options = OpenStruct.new
        options.format = 'html'
        options.path = 'report/'
        options.host = "https://apimation.com"
        options.threads = '2'
        options.grid = 'http://10.0.2.15:4444/wd/hub'
        options.browser = 'GRID-CHROME'

        
        opt_parser = OptionParser.new do |opts|
            opts.banner = 'Usage:ruby main.rb [options]'
            opts.separator ''
            opts.separator 'Specific options:'

            opts.on('-f', '--format [Format]', 'Report format [json/html]') do |format|
                options.format = format
            end

            opts.on('-p', '--path [Path]', 'Report path [report/]') do |path|
                options.path = path
            end

            opts.on('-e', '--env [env]', 'Target host [https://apimation.com]') do |host|
                options.host = host
            end

            opts.on('-t', '--threads [Count]', 'Thread count [INT]') do |threads|
                options.threads = threads
            end

            opts.on_tail('-h', '--help', 'Show this message') do 
                puts opts
                exit
            end
        end
        opt_parser.parse!(args)
        options
    end
end