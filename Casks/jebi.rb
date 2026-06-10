cask "jebi" do
  version "0.1.9"

  on_arm do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.9/jebi-0.1.9-arm64.dmg"
    sha256 "99a085b2e27dbcf939e5ce0f4cac04646cb3b12a25366dc01f20302161603348"
  end

  on_intel do
    url "https://github.com/jebi-sh/jebi/releases/download/v0.1.9/jebi-0.1.9-x64.dmg"
    sha256 "eb0779dd1f6eb67d1844d555fcfbf7e4c7dac2491ea9c74e0ec1e0a9863baf8f"
  end

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
