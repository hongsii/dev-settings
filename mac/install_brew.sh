if [ -x "$(command -v brew)" ]; then
    echo "Already install brew. skip this script"
    exit 1
fi

echo "Install brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew_file_name="BrewFile"
if [ ! -f "$brew_file_name" ]; then
    echo "$brew_file_name doesn't exist"
    exit 1
fi

echo "Install mas for app store"
brew install mas

echo "Install bundle"
brew bundle
