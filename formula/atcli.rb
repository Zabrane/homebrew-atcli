require "formula"

class Atcli < Formula
  desc "Cross-Platform Secure High-Speed Managed File Transfer Service"
  homepage "https://alephtransfer.com/"
  url "https://github.com/alephtransfer/homebrew-atcli/releases/download/v1.0.3/atcli-darwin-amd64-1.0.3.tar.gz"
  sha256 "e8b11c8fc6a146c30707820eebe8590e3fa4c50c0096342e0bda6f87d9a7227a"
  head "https://github.com/alephtransfer/homebrew-atcli.git"

  def install
    bin.install "atcli"
  end

  # Homebrew requires tests.
  test do
    assert_match "1.0.3", shell_output("#{bin}/atcli --version", 2)
  end
end
