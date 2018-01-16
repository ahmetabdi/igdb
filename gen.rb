require 'active_support/inflector'

inputs = ARGV
for input in inputs
    class_name = input.classify
    path = input.pluralize
    representer = "Igdb::#{class_name}Representer"
    
    content = \
"class Igdb::#{class_name} < Igdb::ApiResource
    @path = '#{path}'
    @representer = #{representer}
end"
    
    File.open("lib/igdb/models/#{input}.rb", 'w') { |file| file.write(content) }
end