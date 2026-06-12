cask "jebi" do
  version "0.1.11"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.11/jebi-0.1.11-arm64.dmg"
    sha256 "a1180a36acbc7421e5aa15a12d53177657fd5d29b05db66ffdc1db0ba68a90e6"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.11/jebi-0.1.11-x64.dmg"
    sha256 "e27a8ddf61eebb68187181dfc14f0d4df8420e8477d32555c36b35a26ba7bab4"
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
