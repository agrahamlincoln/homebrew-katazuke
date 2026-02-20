class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.9.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.9.1/katazuke-0.9.1-darwin-arm64.tar.gz"
    sha256 "d3ec35b022132e2b394571a30b562338b6050cc7cd3a728e8ee7e20cb68e04ea"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.9.1/katazuke-0.9.1-linux-amd64.tar.gz"
    sha256 "e139451595d6854d3440fadd38d4151952d4ca3d0c9d1e0a134b3427c3121391"
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
