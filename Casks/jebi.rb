cask "jebi" do
  version "0.1.3"
  sha256 "798607a3691791fa90e2d153b3e8be20cd0cc762cf3d082cb8e55aeea4562ad1"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.3/jebi-0.1.3-arm64.dmg"
  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :ventura"

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
