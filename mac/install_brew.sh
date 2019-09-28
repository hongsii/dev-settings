if [ -x "$(command -v brew)" ]; then
    echo "Already install brew. skip this script"
    exit 1
fi

echo "Install brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install mas for app store"
brew install mas

echo "Install bundle"
brew bundle
