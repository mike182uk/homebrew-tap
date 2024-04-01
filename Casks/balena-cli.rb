cask "balena-cli" do
  version "18.1.5"
  sha256 "3de7bc0c22d3022cf082819a59e8072d883b04d30f65deb607eeff0bca6b8ed2"

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
