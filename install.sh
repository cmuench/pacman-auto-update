#! /bin/bash
set -e


mainFunction () {
	so rm --recursive --force pacman-auto-update

	so git clone --depth 1 --shallow-submodules "https://github.com/cmuench/pacman-auto-update.git"
	cd "./pacman-auto-update/package"

	export PACKAGER="${USER} <@${HOSTNAME}>"
	so makepkg --syncdeps --needed --rmdeps --force --noconfirm
	so sudo pacman --upgrade --noconfirm *.pkg.*

	cd "../.."
	so rm --recursive --force pacman-auto-update
}


so () {
	local commands="${@}"

	if [[ "${verbose}" -eq 1 ]]; then
		if ! ${commands}; then
			exit "${?}"
		fi
	elif ! error="$(eval "${commands}" 2>&1 >"/dev/null")" ; then
		if [ "${error}" == "" ] ; then
			error="Command failed: ${commands}"
		fi

		echo "${FUNCNAME[1]}: ${error}" >&2
		exit 1
	fi
}


sudo -v
mainFunction
