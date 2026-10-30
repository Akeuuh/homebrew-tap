cask "mdnotch" do
  version "0.4.0"
  sha256 "3985d101fb0f399caa631e2295cda55be0a57e4c0247804a59f99f5efcfb5f2c"

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
