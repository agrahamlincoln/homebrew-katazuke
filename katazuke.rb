class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.2.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.0/katazuke-0.2.0-darwin-arm64.tar.gz"
    sha256 "40ffdceac98d58b24809fecf5113f4a45ea21bafc4780033d14b021347c25cda"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.2.0/katazuke-0.2.0-linux-amd64.tar.gz"
    sha256 "f989142ce4be635535696ac75d1f13dcf4e44dbac45bd51447335f293619c616"
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
