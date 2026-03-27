cask "networkspeedmenubar" do
  version "1.2"
  sha256 "de428f45377fd83ff1603136f74488f2384db69cee0f7d6bdcd0d4cae1091daa"

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
