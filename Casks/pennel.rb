# typed: strict
# frozen_string_literal: true

cask "pennel" do
  version "0.1.47"
  sha256 "e5dbea86517965ccaa49b539ca4c2a9e16810e77fdcfd6c2a098ee0a6222d8b1"

  url "https://github.com/pennel-app/pennel/releases/download/v#{version}/Pennel_#{version}_aarch64.dmg"
  name "Pennel"
  desc "Dictation and meeting notes"
  homepage "https://pennel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pennel.app"

  # Builds are not notarized yet; without this Gatekeeper refuses to open the app.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Pennel.app"]
  end

  # Meetings, history and models stay; zap only removes regenerable data.
  zap trash: [
    "~/Library/Caches/app.pennel.desktop",
    "~/Library/WebKit/app.pennel.desktop",
  ]
end
