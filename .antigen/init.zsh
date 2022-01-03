#-- START ZCACHE GENERATED FILE
#-- GENERATED: Mon  3 Jan 14:31:44 UTC 2022
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/manasmengle/.antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/manasmengle/.antigen/bundles/rupa/z /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/bgnotify /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv /home/manasmengle/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/manasmengle/.antigen/bundles/zsh-users/zsh-autosuggestions) path+=(/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/manasmengle/.antigen/bundles/rupa/z /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/bgnotify /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv /home/manasmengle/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/manasmengle/.antigen/bundles/zsh-users/zsh-autosuggestions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/manasmengle/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/rupa/z/z.sh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/bgnotify/bgnotify.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/manasmengle/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/rupa/z.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/bgnotify plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/python plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/virtualenv plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/manasmengle/.antigen/bundles/rupa/z//' '/home/manasmengle/.antigen/bundles/rupa/z///z.sh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/bgnotify' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/bgnotify/bgnotify.plugin.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv' '/home/manasmengle/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh' '/home/manasmengle/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/manasmengle/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/manasmengle/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/manasmengle/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
