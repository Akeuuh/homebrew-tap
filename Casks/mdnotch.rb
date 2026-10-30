cask "mdnotch" do
  version "0.2.1"
  sha256 "b31ffc6d26f78731f10b09fac8e4e93f693d0090b434e3cb15638d8f71c5e1a9"

  url "https://github.com/Akeuuh/mdNotch/releases/download/v#{version}/mdNotch.dmg"
  name "mdNotch"
  desc "Menu bar app that converts documents and rich text to Markdown, offline"
  homepage "https://github.com/Akeuuh/mdNotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "mdNotch.app"

  zap trash: [
    "~/Library/Preferences/com.akeuuh.mdNotch.plist",
    "~/Library/Saved Application State/com.akeuuh.mdNotch.savedState",
  ]
end
