cask "jebi" do
  version "0.1.17"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.17/jebi-0.1.17-arm64.dmg"
  sha256 "1001e5374c78794a0aae4f1f079c77da0c62538132f11ba6472540eea7131814"

  name "jebi"
  desc "The AI-native terminal for Mac"
  homepage "https://jebi.sh"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "jebi.app"
  binary "#{appdir}/jebi.app/Contents/MacOS/jebi"

  zap trash: [
    "~/Library/Application Support/jebi",
    "~/Library/Preferences/com.jawahar.jebi.plist",
  ]
end
