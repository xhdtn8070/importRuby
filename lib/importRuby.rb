module ImportRuby
  def ImportRuby.require_all(_dir)
      puts "start import"
      Dir[File.expand_path(_dir, Dir.pwd) + "/**/*.rb"].each do |file|
          puts "require #{file}"
          require file
      end
  end
  def ImportRuby.run_all(_dir)
    puts "start run"
    Dir[File.expand_path(_dir, Dir.pwd) + "/**/*.rb"].each do |file|
      puts "run #{file}"
      system("ruby #{file}")
    end
  end
end

# 사용법
# require 'ImportRuby'
# ./config.ru
# ImportRuby.require_all('controller') 
# 폴더명


# 사용법
# require 'ImportRuby'
# ./**.rb
# ImportRuby.run_all('app') 
# 폴더명