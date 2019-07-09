function load_plugins() {
  if ! zgen saved; then
	echo "_______________________[Creating a zgen save]"
	zgen oh-my-zsh
	###zgen oh-my-zsh plugins/adb
	#zgen oh-my-zsh plugins/ant
	# zgen oh-my-zsh plugins/apache2-macports
	###zgen oh-my-zsh plugins/archlinux
	#zgen oh-my-zsh plugins/atom
	#zgen oh-my-zsh plugins/autoenv
	zgen oh-my-zsh plugins/autojump
	#zgen oh-my-zsh plugins/autopep8
	#zgen oh-my-zsh plugins/aws
	zgen oh-my-zsh plugins/battery
	#zgen oh-my-zsh plugins/bbedit
	#zgen oh-my-zsh plugins/bgnotify
	#zgen oh-my-zsh plugins/boot2docker
	#zgen oh-my-zsh plugins/bower
	#zgen oh-my-zsh plugins/brew
	#zgen oh-my-zsh plugins/brew-cask
	#zgen oh-my-zsh plugins/bundler
	#zgen oh-my-zsh plugins/bwana
	#zgen oh-my-zsh plugins/cabal
	#zgen oh-my-zsh plugins/cake
	#zgen oh-my-zsh plugins/cakephp3
	#zgen oh-my-zsh plugins/capistrano
	#zgen oh-my-zsh plugins/cask
	#zgen oh-my-zsh plugins/catimg
	#zgen oh-my-zsh plugins/celery
	#zgen oh-my-zsh plugins/chruby
	#zgen oh-my-zsh plugins/chucknorris
	#zgen oh-my-zsh plugins/cloudapp
	#zgen oh-my-zsh plugins/coffee
	#zgen oh-my-zsh plugins/colemak
	#zgen oh-my-zsh plugins/colored-man
	zgen oh-my-zsh plugins/colorize
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh plugins/common-aliases
	zgen oh-my-zsh plugins/compleat
	# zgen oh-my-zsh plugins/composer
	# zgen oh-my-zsh plugins/copydir
	# zgen oh-my-zsh plugins/copyfile
	zgen oh-my-zsh plugins/cp
	# zgen oh-my-zsh plugins/cpanm
	zgen oh-my-zsh plugins/debian
	zgen oh-my-zsh plugins/dircycle
	zgen oh-my-zsh plugins/dirhistory
	zgen oh-my-zsh plugins/dirpersist
	# zgen oh-my-zsh plugins/django
	# zgen oh-my-zsh plugins/docker
	# zgen oh-my-zsh plugins/docker-compose
	###zgen oh-my-zsh plugins/emacs
	# zgen oh-my-zsh plugins/ember-cli
	# zgen oh-my-zsh plugins/emoji-clock
	# zgen oh-my-zsh plugins/encode64
	zgen oh-my-zsh plugins/extract
	# zgen oh-my-zsh plugins/fabric
	zgen oh-my-zsh plugins/fasd
	# zgen oh-my-zsh plugins/fastfile
	# zgen oh-my-zsh plugins/fbterm
	# zgen oh-my-zsh plugins/forklift
	zgen oh-my-zsh plugins/frontend-search
	# zgen oh-my-zsh plugins/gas
	# zgen oh-my-zsh plugins/gem
	zgen oh-my-zsh plugins/git
	# zgen oh-my-zsh plugins/git-extras
	# zgen oh-my-zsh plugins/gitfast
	# zgen oh-my-zsh plugins/git-flow
	# zgen oh-my-zsh plugins/git-flow-avh
	zgen oh-my-zsh plugins/github
	# zgen oh-my-zsh plugins/git-hubflow
	# zgen oh-my-zsh plugins/gitignore
	# zgen oh-my-zsh plugins/git-prompt
	# zgen oh-my-zsh plugins/git-remote-branch
	# zgen oh-my-zsh plugins/glassfish
	zgen oh-my-zsh plugins/gnu-utils
	# zgen oh-my-zsh plugins/go
	# zgen oh-my-zsh plugins/golang
	# zgen oh-my-zsh plugins/gpg-agent
	# zgen oh-my-zsh plugins/gradle
	# zgen oh-my-zsh plugins/grails
	# zgen oh-my-zsh plugins/grunt
	# zgen oh-my-zsh plugins/heroku
	zgen oh-my-zsh plugins/history
	zgen oh-my-zsh plugins/history-substring-search
	# zgen oh-my-zsh plugins/httpie
	zgen oh-my-zsh plugins/iwhois
	# zgen oh-my-zsh plugins/jake-node
	# zgen oh-my-zsh plugins/jhbuild
	# zgen oh-my-zsh plugins/jira
	# zgen oh-my-zsh plugins/jruby
	# zgen oh-my-zsh plugins/jsontools
	# zgen oh-my-zsh plugins/jump
	###zgen oh-my-zsh plugins/kate
	# zgen oh-my-zsh plugins/kitchen
	# zgen oh-my-zsh plugins/knife
	# zgen oh-my-zsh plugins/knife_ssh
	# zgen oh-my-zsh plugins/laravel
	# zgen oh-my-zsh plugins/laravel4
	# zgen oh-my-zsh plugins/laravel5
	# zgen oh-my-zsh plugins/last-working-dir
	# zgen oh-my-zsh plugins/lein
	# zgen oh-my-zsh plugins/lighthouse
	# zgen oh-my-zsh plugins/lol
	# zgen oh-my-zsh plugins/macports
	# zgen oh-my-zsh plugins/marked2
	# zgen oh-my-zsh plugins/mercurial
	# zgen oh-my-zsh plugins/meteor
	# zgen oh-my-zsh plugins/mix
	# zgen oh-my-zsh plugins/mix-fast
	# zgen oh-my-zsh plugins/mosh
	# zgen oh-my-zsh plugins/mvn
	# zgen oh-my-zsh plugins/mysql-macports
	# zgen oh-my-zsh plugins/nanoc
	zgen oh-my-zsh plugins/nmap
	###zgen oh-my-zsh plugins/node
	# zgen oh-my-zsh plugins/npm
	# zgen oh-my-zsh plugins/nvm
	# zgen oh-my-zsh plugins/nyan
	# zgen oh-my-zsh plugins/osx
	# zgen oh-my-zsh plugins/pass
	# zgen oh-my-zsh plugins/paver
	# zgen oh-my-zsh plugins/pep8
	# zgen oh-my-zsh plugins/per-directory-history
	###zgen oh-my-zsh plugins/perl
	# zgen oh-my-zsh plugins/phing
	zgen oh-my-zsh plugins/pip
	# zgen oh-my-zsh plugins/pj
	# zgen oh-my-zsh plugins/pod
	# zgen oh-my-zsh plugins/postgres
	# zgen oh-my-zsh plugins/pow
	# zgen oh-my-zsh plugins/powder
	# zgen oh-my-zsh plugins/powify
	zgen oh-my-zsh plugins/profiles
	zgen oh-my-zsh plugins/pyenv
	zgen oh-my-zsh plugins/pylint
	zgen oh-my-zsh plugins/python
	# zgen oh-my-zsh plugins/rails
	# zgen oh-my-zsh plugins/rake
	# zgen oh-my-zsh plugins/rake-fast
	# zgen oh-my-zsh plugins/rand-quote
	# zgen oh-my-zsh plugins/rbenv
	# zgen oh-my-zsh plugins/rbfu
	# zgen oh-my-zsh plugins/rebar
	# zgen oh-my-zsh plugins/redis-cli
	# zgen oh-my-zsh plugins/repo
	# zgen oh-my-zsh plugins/rsync
	# zgen oh-my-zsh plugins/ruby
	# zgen oh-my-zsh plugins/rvm
	# zgen oh-my-zsh plugins/safe-paste
	# zgen oh-my-zsh plugins/sbt
	# zgen oh-my-zsh plugins/scala
	# zgen oh-my-zsh plugins/scd
	###zgen oh-my-zsh plugins/screen
	# zgen oh-my-zsh plugins/sfffe
	# zgen oh-my-zsh plugins/singlechar
	# zgen oh-my-zsh plugins/sprunge
	###zgen oh-my-zsh plugins/ssh-agent
	###zgen oh-my-zsh plugins/sublime
	#zgen oh-my-zsh plugins/sudo
	# zgen oh-my-zsh plugins/supervisor
	# zgen oh-my-zsh plugins/suse
	# zgen oh-my-zsh plugins/svn
	# zgen oh-my-zsh plugins/svn-fast-info
	# zgen oh-my-zsh plugins/symfony
	# zgen oh-my-zsh plugins/symfony2
	zgen oh-my-zsh plugins/systemadmin
	###zgen oh-my-zsh plugins/systemd
	# zgen oh-my-zsh plugins/taskwarrior
	# zgen oh-my-zsh plugins/terminalapp
	# zgen oh-my-zsh plugins/terminitor
	# zgen oh-my-zsh plugins/textastic
	# zgen oh-my-zsh plugins/textmate
	zgen oh-my-zsh plugins/themes
	# zgen oh-my-zsh plugins/thor
	zgen oh-my-zsh plugins/tmux
	zgen oh-my-zsh plugins/tmuxinator
	# zgen oh-my-zsh plugins/torrent
	# zgen oh-my-zsh plugins/tugboat
	###zgen oh-my-zsh plugins/ubuntu
	zgen oh-my-zsh plugins/urltools
	# zgen oh-my-zsh plugins/vagrant
	# zgen oh-my-zsh plugins/vim-interaction
	# zgen oh-my-zsh plugins/vi-mode
	zgen oh-my-zsh plugins/virtualenv
	# zgen oh-my-zsh plugins/virtualenvwrapper
	# zgen oh-my-zsh plugins/vundle
	zgen oh-my-zsh plugins/wakeonlan
	# zgen oh-my-zsh plugins/wd
	# zgen oh-my-zsh plugins/web-search
	# zgen oh-my-zsh plugins/wp-cli
	# zgen oh-my-zsh plugins/xcode
	# zgen oh-my-zsh plugins/yii
	# zgen oh-my-zsh plugins/yii2
	# zgen oh-my-zsh plugins/yum
	# zgen oh-my-zsh plugins/z
	# zgen oh-my-zsh plugins/zeus
	# zgen oh-my-zsh plugins/zsh_reload

	# zgen load psyrendust/alf
	zgen load arialdomartini/oh-my-git
	# zgen load arialdomartini/oh-my-git-themes oppa-lana-style.zsh-theme
	zgen load hchbaw/list-colors.zsh
	zgen load sorin-ionescu/prezto
	zgen load thrig/zsh-compdef
	zgen load zsh-users/zsh-completions
	zgen load zsh-users/zsh-completions src
	zgen load http://git.code.sf.net/p/zsh/code Completion/Linux/Command 
	zgen load Vifon/deer
	zgen load joel-porquet/zsh-dircolors-solarized
	zgen load zsh-users/zaw
	zgen load clvv/fasd
	#zgen load b4b4r07/enhancd
	zgen load psprint/zsh-navigation-tools
	
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load trapd00r/zsh-syntax-highlighting-filetypes
	zgen oh-my-zsh plugins/zsh-syntax-highlighting
	
	zgen load zsh-users/zsh-history-substring-search
	# zgen load unixorn/zsh-starter-kit	# login
# 	zgen loadall <<EOPLUGINS
# 		zsh-users/zsh-history-substring-search
# EOPLUGINS
	zgen load tarruda/zsh-autosuggestions	# must last
	zle-line-init() {zle autosuggest-start}; zle -N zle-line-init	# autosuggestions
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
	
        echo "saving"
	zgen save
	zgen update
fi
}
