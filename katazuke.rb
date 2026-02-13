class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.8.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.8.0/katazuke-0.8.0-darwin-arm64.tar.gz"
    sha256 "700a44740394da2d6344304becc6f55171a4fa597a8493c2a74ee1eda1edebd8"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.8.0/katazuke-0.8.0-linux-amd64.tar.gz"
    sha256 "997867b2e2439b2fad537dcd18e61d79af9cf6af603a7ef788a5fc320674855c"
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
