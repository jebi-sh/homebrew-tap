cask "jebi" do
  version "0.1.4"
  sha256 "b9624b046cb3dfda3bcf21e19063a5c54f34ab56644ba5b7dc93d203a09ada75"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.4/jebi-0.1.4-arm64.dmg"
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
