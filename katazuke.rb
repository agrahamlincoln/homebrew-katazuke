class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.2.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.1/katazuke-0.2.1-darwin-arm64.tar.gz"
    sha256 "6b24aa80a99d47bcf26ef652d792700e409e16f43d7ca6c5d70877bc64de935d"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.1/katazuke-0.2.1-linux-amd64.tar.gz"
    sha256 "8dc02fa296787c23aa26598cd15f9c28d28fb25fbedd669c17adb4add2f934f7"
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
