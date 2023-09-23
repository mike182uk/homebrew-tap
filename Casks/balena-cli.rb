cask "balena-cli" do
  version "17.1.1"
  sha256 "abb8c6143fa85c6fddb431dd6d8e66562af9ae7f3d61d7737eb0f738e629b8ff"

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
