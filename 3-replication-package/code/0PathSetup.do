

global folder "C:\Users\VK\Downloads\3-replication-package"

set varabbrev on
version 16.1

global seed 12345

// Installing Packages

net install grc1leg2.pkg, from (http://digital.cgdev.org/doc/stata/MO/Misc/) replace
ssc install estout, replace
ssc install moremata, replace
ssc install mhtreg, replace

do $folder/code/spectator_main.do
do $folder/code/spectator_vary.do
do $folder/code/worker_main.do