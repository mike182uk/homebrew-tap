cask "balena-cli" do
  version "12.55.4"
  sha256 "5682a61d0299e5570c088642e50e79db72ee3bca0f86170f46fbcc4256359ade"

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
