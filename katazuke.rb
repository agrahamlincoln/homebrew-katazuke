class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "1.0.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v1.0.0/katazuke-1.0.0-darwin-arm64.tar.gz"
    sha256 "66b9291117c5cc31e5964156a96981fdfea2c3148b1e157f6b36ac264750dd8f"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v1.0.0/katazuke-1.0.0-linux-amd64.tar.gz"
    sha256 "97ae8d39413886effc426cf188bc26e84e4c5cfc02da06d5d9d1cc83af54c52c"
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
