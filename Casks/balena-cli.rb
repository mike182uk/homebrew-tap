cask "balena-cli" do
  version "14.5.12"
  sha256 "5f00526c28fb6999836c975b4a359c554d763042bc0125406444a60d71d4e6c3"

  url "https://github.com/balena-io/balena-cli/releases/download/v#{version}/balena-cli-v#{version}-macOS-x64-installer.pkg"
  name "Balena CLI"
  desc "Official Balena CLI tool"
  homepage "https://github.com/balena-io/balena-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "balena-cli-v#{version}-macOS-x64-installer.pkg"

  uninstall pkgutil: "io.balena.cli"
end
