cask "jebi" do
  version "0.1.5"
  sha256 "75a961614c8ba278ae42cec0ad9b90a2944deaaea99316904544326ec925b99d"

  url "https://github.com/jebi-sh/jebi/releases/download/v0.1.5/jebi-0.1.5-arm64.dmg"
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
