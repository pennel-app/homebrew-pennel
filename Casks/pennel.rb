# typed: strict
# frozen_string_literal: true

cask "pennel" do
  version "0.1.49"
  sha256 "fe53d1f1f3ff66bbf1f6d7b6d206b952e936c6a6c6d7227e37ac6b571c4bed6b"

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

  # Meetings, history and models stay; zap only removes regenerable data.
  zap trash: [
    "~/Library/Caches/app.pennel.desktop",
    "~/Library/WebKit/app.pennel.desktop",
  ]
end
