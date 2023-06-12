cask "balena-cli" do
  version "16.5.2"
  sha256 "fd3237f1f1461e2dd63d8fca0f062702ea9c221e0b292d57ca9155a440015c66"

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
