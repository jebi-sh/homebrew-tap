cask "jebi" do
  version "0.1.18"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.18/jebi-0.1.18-arm64.dmg"
  sha256 "17550ac34bcaf55309867ee4dae0f446e7c93746e26e35d65a1110ee2c82a30c"

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
