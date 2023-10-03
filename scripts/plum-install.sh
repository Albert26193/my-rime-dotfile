function select_rime_install {
	local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
	local target_path="${git_root}/plum"
	bash -c "${target_path}/rime-install --select :all"
}

select_rime_install
