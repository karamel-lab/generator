name             'generator'
maintainer       "generator"
maintainer_email "k.hakimzadeh@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs generator'
version          "0.1"

recipe            "generator::install", "Experiment setup for generator"
recipe            "generator::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "generator/group",
:description => "group parameter value",
:type => "string"

attribute "generator/user",
:description => "user parameter value",
:type => "string"


