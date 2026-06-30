cask "jebi" do
  version "0.1.21"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.21/jebi-0.1.21-arm64.dmg"
  sha256 "e04780d6a06abe364613fda0fb4f4c3281718f11af144e5589378aa6e909ae70"

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
