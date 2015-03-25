Facter.add("users") do
	setcode do
		Facter::Core::Execution.exec('echo "root"; for f in $(find /home/ -mindepth 1 -maxdepth 1 -type d ); do f="${f#/}"; echo "${f##*/}"; done;')
	end
end