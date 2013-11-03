#!/usr/bin/env ruby

require 'optparse'

require_relative '../lib/todidnt'

options = {:path => '.'}
ARGV.options do |opts|
  opts.on('-p', '--path PATH', 'Git directory to run Todidnt in (default: current directory)') do |path|
    options[:path] = path
  end

  opts.on_tail('-h', '--help', 'Show this message') do
    puts opts
    exit
  end

  opts.parse!
end

ToDidnt::Runner.start(options)
