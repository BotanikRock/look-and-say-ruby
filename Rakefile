task default: %w[main]

task :sequence, [:length] do |_, args|
  ruby "bin/generate_look_say #{args.length}"
end

task :test do
  ruby 'test/tc_seqeunce_generator.rb'
end
