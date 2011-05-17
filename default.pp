case $operatingsystem {
	Darwin: {
		$home = "/Users"
		$current_user = 'phil'
	}
	default: {
		$home = "$home"
		$current_user = $::id
	}
}

file { "$home/$current_user/.bash_aliases":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/bash_aliases.sh",
}

file { "$home/$current_user/.bash_profile":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/bash_profile.sh",
}

file { "$home/$current_user/.bashrc":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/bashrc.sh",
}

file { "$home/$current_user/.gitconfig":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/gitconfig",
}

file { "$home/$current_user/.gitignore":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/gitignore",
}

file { "$home/$current_user/.profile":
	ensure => link,
	target => "$home/$current_user/Workspace/dot-files/profile.sh",
}

