desc 'Slides, eh'
file 'index.html' => ['index.md'] do
  sh('keydown slides index.md') { |ok, _| ok || abort }
end

task default: 'index.html'
