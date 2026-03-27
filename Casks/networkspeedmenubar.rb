cask "networkspeedmenubar" do
  version "1.1"
  sha256 "bea9b12698e78df8a8f19c6f479af71953a7541f9e0d9842701734cdd09f818d"

  url "https://github.com/m-tse/NetworkSpeedMenuBarApp/releases/download/v#{version}/NetworkSpeed-#{version}.zip"
  name "Network Speed Menu Bar"
  desc "Menu bar app that shows internet speed using Cloudflare speed test"
  homepage "https://github.com/m-tse/NetworkSpeedMenuBarApp"

  depends_on macos: ">= :ventura"

  app "Network Speed.app"

  zap trash: [
    "~/Library/Preferences/com.improvmx.networkspeed.plist",
  ]
end
