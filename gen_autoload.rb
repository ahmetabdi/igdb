require 'active_support/inflector'

dir = ARGV[0] || 'models'

files = Dir.entries("lib/igdb/#{dir}").sort

for file in files
    unless file == '.' || file == '..'
        short = file.slice(0, file.length-3)
        class_name = short.classify
        path = "igdb/#{dir}/#{short}"
    
        puts "autoload :#{class_name}, '#{path}'"
    
    end
end