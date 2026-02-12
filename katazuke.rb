class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.2.2"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.2/katazuke-0.2.2-darwin-arm64.tar.gz"
    sha256 "6df47097d527cbd039210ba4f78b7269ca08004b81e8814b4e5a23a0d723ef8c"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.2/katazuke-0.2.2-linux-amd64.tar.gz"
    sha256 "cb187896c3706285251f3f03e0073fc4986c9f9c18639922ffa7836d78b3cfb6"
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
