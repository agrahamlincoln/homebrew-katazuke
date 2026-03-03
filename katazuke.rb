class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.10.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.10.0/katazuke-0.10.0-darwin-arm64.tar.gz"
    sha256 "bccba9aa240bec0c6bfa6b0cb71294088410bef94f08844b1f29bfbcf5f7665e"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.10.0/katazuke-0.10.0-linux-amd64.tar.gz"
    sha256 "058f747d2106f2ce037fdc175b66f1cf19645f215b1105069d8649cd67ff2704"
  end

  def install
    if OS.mac?
      bin.install "katazuke-darwin-arm64" => "katazuke"
    elsif OS.linux?
      bin.install "katazuke-linux-amd64" => "katazuke"
    end
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
