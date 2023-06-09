# *.tar.xz)    tar xf $1    ;;
# *.tar.zst)   unzstd $1    ;;

function ex -d "Extract archives"
  switch $argv
    case '*.tar.bz2'
      tar xjf $argv
    case '*.tar.gz'
      tar xzf $argv
    case '*.bz2'
      bunzip2 $argv
    case '*.rar'
      unrar x $argv
    case '*.gz'
      gunzip $argv
    case '*.tar'
      tar xf $argv
    case '*.tbz2'
      tar xjf $argv
    case '*.tgz'
      tar xzf $argv
    case '*.tar.xz'
      tar xf $argv
    case '*.tar.zst'
      unzstd $argv
    case '*.zip'
      unzip $argv
    case '*.Z'
      uncompress $argv
    case '*.7z'
      7z x $1
    case "*.deb"
      ar x $argv
    case '*'
      echo 'This filetype is unsupported by ex()'
  end
end
