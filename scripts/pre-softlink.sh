function link_to_rime {
	local target_path="${HOME}/Library/Rime"
	local git_root="$(git rev-parse --show-toplevel 2>/dev/null)"

	if [[ -d ${target_path} ]]; then
		echo "${target_path} exist. back up it. exit..."
	elif [[ ! -z "$(ls -A ${target_path})" ]]; then
		echo "please back up origin file. exit..."
	else
		ln -s "${git_root}/config" "${target_path}"
		echo "Link it successful."
	fi

}

link_to_rime
