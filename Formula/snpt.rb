class Snpt < Formula
  desc "Gist powered CLI snippet retriever"
  homepage "https://github.com/mike182uk/snpt"
  url "https://github.com/mike182uk/snpt/releases/download/2.1.0/snpt-2.1.0-darwin-amd64.tar.gz"
  sha256 "f01ad9f6703ed6137a2ef2a48eba53fde8448c3e0d51ac14ecb503a3d389d4a7"

  def install
    bin.install "snpt"
  end

  test do
    assert_equal "snpt v2.0.0", `#{bin}/snpt version`.strip
  end
end
