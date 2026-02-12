class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.0/katazuke-0.1.0-darwin-arm64.tar.gz"
    sha256 "6ac4ec3a9bb94ba5e4ffd49d47b8d19e51fad2f7cac0ea9175254615c6046680"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.0/katazuke-0.1.0-linux-amd64.tar.gz"
    sha256 "416e6168061f01868a1c73638686104eb7a89db081e501512e718d037929f39e"
  end

  def install
    bin.install "katazuke"
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
