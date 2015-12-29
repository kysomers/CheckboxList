Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "CheckboxList"
s.summary = "CheckboxList allows checkboxes for simple user input when given a short list of options."
s.requires_arc = true

# 2
s.version = "0.2.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Kyle Somers" => "kyledouglassomers@gmail.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/kysomers/CheckboxList"



# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/kysomers/CheckboxList.git",:tag => "#{s.version}" ,  :commit => "8e359aec6eaaf046c53edf52049ad067a6a8ca50"}



# 7
s.framework = "UIKit"


# 8
s.source_files = "CheckboxListSwift/*.{swift}"


# 9
s.resources = "CheckboxListSwift/*.{png}"
end
