
Pod::Spec.new do |s|
s.name             = 'CheckboxList'
s.version          = '1.0.1'
s.summary          = 'CheckboxList allows checkboxes for simple user input when given a short list of options.'

s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
DESC

s.homepage         = 'https://github.com/kysomers/CheckboxList'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Kyle Somers' => 'kyledouglassomers@gmail.com' }
s.source           = { :git => 'https://github.com/kysomers/CheckboxList.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = "**/*.{swift}"
s.resources = "**/*.{png}"


end



