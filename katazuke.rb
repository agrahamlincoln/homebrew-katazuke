class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.3.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.3.0/katazuke-0.3.0-darwin-arm64.tar.gz"
    sha256 "65da287269bee55b1c28492d408fa36b3fadbd86be2030a3ba3cb319e0d060fe"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.3.0/katazuke-0.3.0-linux-amd64.tar.gz"
    sha256 "dbbb29fa6e9710ffabbe55d3ae524ff938590dad35c2a8e6ab1324f4afec738a"
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
