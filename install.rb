puts "Copying the sample Twitter OAuth YML file to your config directory..."
dest_file = File.join(Rails.root, 'config', 'twitter_oauth.yml')
src_file = File.join(File.dirname(__FILE__) , 'templates', 'twitter_oauth.example.yml')
FileUtils.cp_r(src_file, dest_file)
puts "File copied - Installation complete!"
puts IO.read(File.join(File.dirname(__FILE__), 'README'))