cask "iina-git" do
  version "1.3.3"
  tag "1"
  arch arm: "arm64", intel: "universal"
  sha256 "49721d4f700b1267da455306cc8bebc7fe02be11fc8ee49bd8f636ac23783e51"
  url "https://github.com/sabadia/iina/releases/download/#{version}-#{tag}/iina-#{arch}.tar.xz"
  name "iina-git"
  desc "Free and open-source media player"
  homepage "https://iina.io/"

  depends_on macos: ">= :high_sierra"

  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-plugin", target: "iina-plugin"
  uninstall quit: "com.colliderli.iina"

  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/HTTPStorages/com.colliderli.iina",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
    "~/Library/WebKit/com.colliderli.iina",
  ]
end