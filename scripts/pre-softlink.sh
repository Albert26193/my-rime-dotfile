function link_to_rime {
	local target_path="${HOME}/Library/Rime"
	local git_root="$(git rev-parse --show-toplevel 2>/dev/null)"
	ln -s "${git_root}" "${target_path}"
}

link_to_rime
