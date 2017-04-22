
task :default => [:serve]

task :serve  do jekyll 'serve -P 3000' end
task :doctor do jekyll 'doctor'        end
task :build  do jekyll 'build'         end

def jekyll(cmd)
	sh "bundle exec jekyll #{cmd}"
end