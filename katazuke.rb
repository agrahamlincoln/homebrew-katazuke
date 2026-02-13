class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.5.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.0/katazuke-0.5.0-darwin-arm64.tar.gz"
    sha256 "42e2d3b60a14061e66200294390b6b740a7985149403019ab97f5d2d694abc10"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.0/katazuke-0.5.0-linux-amd64.tar.gz"
    sha256 "5db2d6869d274a025b3c0a324148fdf516b4f35f7f67684c64bd4388423844f6"
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
