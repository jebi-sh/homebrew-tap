cask "jebi" do
  version "0.1.12"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.12/jebi-0.1.12-arm64.dmg"
    sha256 "188206cf8b4735190808a4865923ca661f9cf608747ca13dd7243010cb3ebd10"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.12/jebi-0.1.12-x64.dmg"
    sha256 "f4b8d2c0afd81b88d88f7b08144171e09e5838cdb723063b351ce4796b592d36"
  end

  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :monterey"

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
