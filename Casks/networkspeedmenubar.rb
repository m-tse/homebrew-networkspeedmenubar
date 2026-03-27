cask "networkspeedmenubar" do
  version "1.0"
  sha256 "5d535d5da97e50f137e29b253e1affe48b9b3af0f9652233844ff9961a4c43b5"

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
