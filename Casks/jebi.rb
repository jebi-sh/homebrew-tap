cask "jebi" do
  version "0.1.20"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.20/jebi-0.1.20-arm64.dmg"
  sha256 "2f8035de780cd1d7fa7bdeca91a51d914a59277388a08fb142a0039a631b0c12"

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
