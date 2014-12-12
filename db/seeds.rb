unless Rails.env.production? || Rails.env.staging?
  require 'database_cleaner'
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end

table_names = %w(users documents)

table_names.each do |table_name|
  dir = case Rails.env
  when 'development'
    'development'
  else
    break
  end
  path = Rails.root.join('db', 'seeds', dir, "#{table_name}.rb")
  if File.exist?(path)
    puts "Creating #{table_name}...."
    require(path)
  end
end
