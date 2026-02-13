class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.5.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.1/katazuke-0.5.1-darwin-arm64.tar.gz"
    sha256 "9fbe5c45aa05988929ad66d84c2fb8dfaea37fb5779f852e15c34163b0896fe9"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.1/katazuke-0.5.1-linux-amd64.tar.gz"
    sha256 "3f77c6b54cc110d56467e4c52d3cad88d50d925c4f02da57962cb748f33f8afa"
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
