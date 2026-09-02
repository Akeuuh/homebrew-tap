cask "mdnotch" do
  version "0.2.0"
  sha256 "f7681267acfb33d37e9229417d034dc3b522f30d23ad52be5c8f9f5d2b4d0b8e"

  url "https://github.com/Akeuuh/mdNotch/releases/download/v#{version}/mdNotch.dmg"
  name "mdNotch"
  desc "Menu bar app that converts documents and rich text to Markdown, offline"
  homepage "https://github.com/Akeuuh/mdNotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "mdNotch.app"

  zap trash: [
    "~/Library/Preferences/com.akeuuh.mdNotch.plist",
    "~/Library/Saved Application State/com.akeuuh.mdNotch.savedState",
  ]
end
