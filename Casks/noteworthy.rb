cask "noteworthy" do
  version "2.0"
  sha256 "c2fd753a106f9cee20679dfe1111d6eed779efca4b3f01338914580125457dcd"

  url "https://github.com/SumanHansada/NoteWorthy-Public/releases/download/v#{version}/NoteWorthy-#{version}.zip"
  name "NoteWorthy"
  desc "Notes app with private on-device AI"
  homepage "https://noteworthy.wtf/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "NoteWorthy.app"

  zap trash: [
    "~/Library/Containers/com.sumanhansada.noteworthy",
    "~/Library/Containers/com.sumanhansada.noteworthy.macwidgets",
    "~/Library/Group Containers/78PVNG8XTL.group.com.sumanhansada.noteworthy",
  ]
end
