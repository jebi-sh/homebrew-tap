cask "jebi" do
  version "0.1.14"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.14/jebi-0.1.14-arm64.dmg"
    sha256 "9645a5f145ea2d837f475b45ce85c7d4df1d6623c77a28a5a076e98df43cd4f8"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.14/jebi-0.1.14-x64.dmg"
    sha256 "6105f7225e55e7ba5f961845c177bebd16a8a268ac49e55dcca58401d75b9751"
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
