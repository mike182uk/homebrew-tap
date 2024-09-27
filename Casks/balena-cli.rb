cask "balena-cli" do
  version "19.0.13"
  sha256 "8e557a214b495bc10c0834c12ca46bbf8aab2c0e5bebcd647ba6e7bc5082d10a"

  url "https://github.com/balena-io/balena-cli/releases/download/v#{version}/balena-cli-v#{version}-macOS-x64-installer.pkg"
  name "balena CLI"
  desc "Official balena command-line interface"
  homepage "https://github.com/balena-io/balena-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "balena-cli-v#{version}-macOS-x64-installer.pkg"

  uninstall pkgutil: "io.balena.cli"

  zap trash: "~/.balena"
end
