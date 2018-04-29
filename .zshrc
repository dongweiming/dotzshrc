export LANG=en_US.UTF-8
source ~/antigen.zsh

antigen use oh-my-zsh

if [ "${OSTYPE:0:6}"="darwin" ]; then
  antigen-bundle osx
  antigen-bundle brew
  MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
  source $(brew --prefix autoenv)/activate.sh
  export HOMEBREW_REPOSITORY=/usr/local
fi
PATH=$PATH:~/bin
antigen bundles <<EOB
  git-extras
  pip
  chrissicool/zsh-256color
  systemadmin
  python
  colorize
  z
  terminalapp
  sudo
  colorize
  virtualenv
  virtualenvwrapper
  git
  pep8
  autopep8
  github
  vagrant
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
EOB

antigen theme random
antigen apply

autoload -U zmv
export SSH_ASKPASS=""
alias rake='noglob rake'
fpath=(~/.zfunc "${fpath[@]}" )
LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=01;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=01;38;5;64:*.tar=00;38;5;61:*.tgz=01;38;5;61:*.arj=01;38;5;61:*.taz=01;38;5;61:*.lzh=01;38;5;61:*.lzma=01;38;5;61:*.tlz=01;38;5;61:*.txz=01;38;5;61:*.zip=01;38;5;61:*.z=01;38;5;61:*.Z=01;38;5;61:*.dz=01;38;5;61:*.gz=01;38;5;61:*.lz=01;38;5;61:*.xz=01;38;5;61:*.bz2=01;38;5;61:*.bz=01;38;5;61:*.tbz=01;38;5;61:*.tbz2=01;38;5;61:*.tz=01;38;5;61:*.deb=01;38;5;61:*.rpm=01;38;5;61:*.jar=01;38;5;61:*.rar=01;38;5;61:*.ace=01;38;5;61:*.zoo=01;38;5;61:*.cpio=01;38;5;61:*.7z=01;38;5;61:*.rz=01;38;5;61:*.apk=01;38;5;61:*.gem=01;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=01;38;5;245:*.rdf=01;38;5;245:*.owl=01;38;5;245:*.n3=01;38;5;245:*.ttl=01;38;5;245:*.nt=01;38;5;245:*.torrent=01;38;5;245:*.xml=01;38;5;245:*Makefile=01;38;5;245:*Rakefile=01;38;5;245:*build.xml=01;38;5;245:*rc=01;38;5;245:*1=01;38;5;245:*.nfo=01;38;5;245:*README=01;38;5;245:*README.txt=01;38;5;245:*readme.txt=01;38;5;245:*.md=01;38;5;245:*README.markdown=01;38;5;245:*.ini=01;38;5;245:*.yml=01;38;5;245:*.cfg=01;38;5;245:*.conf=01;38;5;245:*.c=01;38;5;245:*.cpp=01;38;5;245:*.cc=01;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=01;38;5;166:*.mpg=01;38;5;166:*.mpeg=01;38;5;166:*.m2v=01;38;5;166:*.mkv=01;38;5;166:*.ogm=01;38;5;166:*.mp4=01;38;5;166:*.m4v=01;38;5;166:*.mp4v=01;38;5;166:*.vob=01;38;5;166:*.qt=01;38;5;166:*.nuv=01;38;5;166:*.wmv=01;38;5;166:*.asf=01;38;5;166:*.rm=01;38;5;166:*.rmvb=01;38;5;166:*.flc=01;38;5;166:*.avi=01;38;5;166:*.fli=01;38;5;166:*.flv=01;38;5;166:*.gl=01;38;5;166:*.m2ts=01;38;5;166:*.divx=01;38;5;166:*.webm=01;38;5;166:*.axv=01;38;5;166:*.anx=01;38;5;166:*.ogv=01;38;5;166:*.ogx=01;38;5;166:';
export LS_COLORS

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

for keycode in '[' 'O'; do
  bindkey "^[${keycode}A" history-substring-search-up
  bindkey "^[${keycode}B" history-substring-search-down
done
unset keycode


# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

export PATH=$HOME/.rbenv/bin:$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin

export FORWARD_DOCKER_PORTS=true
alias sbcl='rlwrap sbcl'
alias e='/usr/local/bin/emacsclient -t'
alias vimnot='/usr/bin/vim'
export LESS="-R"
export EDITOR="e"
export GIT_EDITOR="emacsclient -t"
#eval "$(rbenv init -)"
unset RUBYOPT
. ~/z.sh
#.  ~/k/k.sh

alias disable-kb='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext'
alias enable-kb='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext'
unsetopt correct_all
setopt correct
export GOPATH=$HOME
export PATH="$HOME/.cask/bin:$PATH"
if [ "${OSTYPE:0:6}"="darwin" ]; then
  autoload -U promptinit && promptinit
  prompt pure
fi
source /usr/local/bin/activate.sh

autoload bashcompinit
bashcompinit
source ~/.gh_complete.sh
export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"
export GIT_EDITOR='/usr/local/bin/emacsclient -t'

fpath=($fpath /Users/dongweiming/.dae) && compinit

export PYTHONPATH=/Users/dongweiming/workspace/shire
. "/usr/local/opt/nvm/nvm.sh"
export PATH="/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin:$PATH:/usr/local/sbin:/Users/dongweiming/bin"
alias ls='ls -hF --color=auto'

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"
