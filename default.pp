file { "/home/${id}/.bash_aliases":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/bash_aliases.sh",
}

file { "/home/${id}/.bash_profile":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/bash_profile.sh",
}

file { "/home/${id}/.bashrc":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/bashrc.sh",
}

file { "/home/${id}/.gitconfig":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/gitconfig",
}

file { "/home/${id}/.gitignore":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/gitignore",
}

file { "/home/${id}/.profile":
	ensure => link,
	target => "/home/${id}/Workspace/dot-files/profile.sh",
}

